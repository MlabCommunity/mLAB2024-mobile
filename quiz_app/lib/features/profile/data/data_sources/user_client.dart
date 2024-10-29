import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_constants.dart';
import '../../../../core/network/base_dio_client.dart';
import '../../domain/archive_models/quizz_archive_model.dart';
import '../../domain/user.dart';

part 'user_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class UserClient {
  factory UserClient(Dio dio, {String baseUrl}) = _UserClient;

  @GET(ApiConstants.userEndpoint)
  Future<User> getUser();

  @PUT(ApiConstants.updateUserEndpoint)
  Future<void> updateUser(@Body() Map<String, dynamic> body);

  @POST(ApiConstants.signOutEndpoint)
  Future<void> signOut();

  @PUT(ApiConstants.guestAccountCreationEndpoint)
  Future<void> convertGuestToUser(@Body() Map<String, dynamic> body);

  @GET(ApiConstants.quizzArchiveEndpoint)
  Future<List<QuizzArchiveModel>> getUserQuizzArchive();
}

@riverpod
UserClient userClient(UserClientRef ref) => UserClient(ref.read(baseDioClientProvider), baseUrl: ApiConstants.baseUrl);
