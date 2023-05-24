import 'package:dio/dio.dart';
import 'package:farm_app/data/service/profile_service.dart';
import 'package:farm_app/domain/entity/profile/profile_delete_request.dart';
import 'package:farm_app/domain/entity/profile/profile_delete_response.dart';
import 'package:farm_app/domain/entity/profile/profile_update_request.dart';
import 'package:farm_app/domain/entity/profile/profile_update_response.dart';

class ProfileRepository{
  ProfileRepository(this._profileService);

  final ProfileService _profileService;

  @override
  Future<ProfileDeleteResponse> delete({
    required ProfileDeleteRequest request,
  }) async {
    try {
      final result = await _profileService.delete(
        request: request,
      );
      return result;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  Future<ProfileUpdateResponse> update({
    required ProfileUpdateRequest request,
  }) async {
    try {
      final result = await _profileService.update(
        request: request,
      );
      return result;
    } on DioError catch (error) {
      throw Exception(
        error.response?.data['message'],
      );
    }
  }
}
