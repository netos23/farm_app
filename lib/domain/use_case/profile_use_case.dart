import 'package:farm_app/data/repository/token_ropository.dart';
import 'package:farm_app/domain/models/profile.dart';
import 'package:farm_app/util/lifecycle_component.dart';
import 'package:farm_app/util/value_stream_wrapper.dart';

class ProfileUseCase implements LifecycleComponent{
  final TokenRepository repository;
  final ValueStreamWrapper<Profile?> profile = ValueStreamWrapper();

  ProfileUseCase(this.repository);

  @override
  void dispose() {
    repository.removeListener(_listenTokenStatus);
    profile.dispose();
  }

  @override
  void init() {
    repository.addListener(_listenTokenStatus);
  }

  void _listenTokenStatus(){
    if(profile.valueOrNull != null && !repository.auth){
      profile.add(null);
    }
  }


  Future<void> logout() async {
    repository.deleteTokens();
  }


  Future<void> deleteAccount() async {
    // todo: delete account;
    await repository.deleteTokens();
  }


}