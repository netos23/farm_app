import 'dart:async';

import 'package:dio/dio.dart';
import 'package:farm_app/domain/entity/profile/profile_delete_request.dart';
import 'package:farm_app/domain/entity/profile/profile_delete_response.dart';
import 'package:farm_app/domain/entity/profile/profile_update_request.dart';
import 'package:farm_app/domain/entity/profile/profile_update_response.dart';
import 'package:farm_app/domain/url/profile_url.dart';
import 'package:retrofit/http.dart';


part 'profile_service.g.dart';

@RestApi()
abstract class ProfileService {
  factory ProfileService(Dio dio, {String baseUrl}) = _ProfileService;

  @POST(ProfileUrl.profileUpdate)
  Future<ProfileUpdateResponse> update({
    @Body() required ProfileUpdateRequest request,
  });

  @DELETE(ProfileUrl.profileDelete)
  Future<ProfileDeleteResponse> delete({
    @Body() required ProfileDeleteRequest request,
  });
}
