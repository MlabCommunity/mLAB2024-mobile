import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/api_constants.dart';
import '../../../../core/network/base_dio_client.dart';
import '../../domain/quiz_list_model.dart';

part 'dashboard_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class DashboardClient {
  factory DashboardClient(Dio dio, {String baseUrl}) = _DashboardClient;

  @GET(ApiConstants.quizListEndpoint)
  Future<QuizListModel> getQuizList(
    @Query(ApiConstants.quizListPageQuery) int page,
    @Query(ApiConstants.quizListPageSizeQuery) int pageSize,
  );

  @DELETE(ApiConstants.deleteQuizEndpoint)
  Future<void> deleteQuiz(@Path('id') String id);
}

@riverpod
DashboardClient dashboardClient(DashboardClientRef ref) =>
    DashboardClient(ref.read(baseDioClientProvider), baseUrl: ApiConstants.baseUrl);