import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/network/api_constants.dart';
import '../../../../core/network/base_dio_client.dart';
import 'package:retrofit/http.dart';

import '../../domain/created_quiz_result.dart';
import '../../domain/generate_quiz_model.dart';

part 'quiz_generation_client.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class QuizGenerationClient {
  factory QuizGenerationClient(Dio dio, {String baseUrl}) = _QuizGenerationClient;

  @POST(ApiConstants.quizGenerationEndpoint)
  @MultiPart()
  Future<GenerateQuizModel> generateQuiz({
    @Part(name: "Content") required String content,
    @Part(name: "NumberOfQuestions") required int numberOfQuestions,
    @Part(name: "QuestionTypes") required List<String> questionTypes,
    @Part(name: "Attachments") required List<MultipartFile> attachments,
    @Part(name: "Language") required String language,
  });

  @POST(ApiConstants.quizCreateEndpoint)
  Future<CreatedQuizResult> createQuiz(@Body() Map<String, dynamic> body);
}

@riverpod
QuizGenerationClient quizGenerationClient(QuizGenerationClientRef ref) =>
    QuizGenerationClient(ref.read(baseDioClientProvider), baseUrl: ApiConstants.baseUrl);
