import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_constants.dart';
import '../../../../core/network/base_dio_client.dart';
import '../../domain/quiz_details_model.dart';

part 'quiz_details_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class QuizDetailsClient {
  factory QuizDetailsClient(Dio dio, {String baseUrl}) = _QuizDetailsClient;

  @GET(ApiConstants.getQuizEndpoint)
  Future<QuizDetailsModel> getQuiz(
      @Path('id') String id,
      @Query(ApiConstants.participationsPageQuery) int page,
      @Query(ApiConstants.participationsPageSizeQuery) int pageSize);

  @PATCH(ApiConstants.updateQuizStatusEndpoint)
  Future<void> updateQuizStatus(@Path('id') String id, @Body() String status);

  @PATCH(ApiConstants.updateQuizAvailabilityEndpoint)
  Future<void> updateQuizAvailability(
      @Path('id') String id, @Body() String availability);

  @PUT(ApiConstants.updateQuizDetailsEndpoint)
  Future<void> updateQuizDetails(@Body() Map<String, dynamic> quizDetails);

  @POST(ApiConstants.addQuestionEndpoint)
  Future<void> addQuestion(@Body() Map<String, dynamic> question);

  @PUT(ApiConstants.updateQuestionEndpoint)
  Future<void> updateQuestion(@Body() Map<String, dynamic> question);

  @DELETE(ApiConstants.deleteQuestionEndpoint)
  Future<void> deleteQuestion(@Path('id') String id);
}

@riverpod
QuizDetailsClient quizDetailsClient(QuizDetailsClientRef ref) =>
    QuizDetailsClient(ref.read(baseDioClientProvider),
        baseUrl: ApiConstants.baseUrl);
