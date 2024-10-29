import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/server_exception.dart';
import '../../../../core/services/file_reader.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/create_quiz_model.dart';
import '../../domain/created_quiz_result.dart';
import '../../domain/generate_quiz_model.dart';
import '../../domain/quiz_request_model.dart';
import '../../views/quizz_text_prompt_page.dart';
import '../data_sources/quiz_generation_client.dart';

part 'quiz_generation_repository.g.dart';

abstract class QuizGenerationRepository {
  ResultFuture<GenerateQuizModel> generateQuiz({
    required QuizRequestModel quizRequestModel,
  });

  ResultFuture<CreatedQuizResult> createQuiz({
    required CreateQuizModel quizModel,
  });
}

class QuizGenerationRepositoryImpl implements QuizGenerationRepository {
  QuizGenerationRepositoryImpl(this._quizGenerationClient);

  final QuizGenerationClient _quizGenerationClient;

  @override
  ResultFuture<GenerateQuizModel> generateQuiz({
    required QuizRequestModel quizRequestModel,
  }) async {
    try {
      final language = QuizLanguage.values
          .firstWhere((e) => e == quizRequestModel.language)
          .name;
      final attachments = quizRequestModel.attachments
          .map((e) => FileReader.toMultipartFile(e))
          .toList();
      final model = await _quizGenerationClient.generateQuiz(
        content: quizRequestModel.content,
        numberOfQuestions: quizRequestModel.numberOfQuestions,
        questionTypes: quizRequestModel.questionTypes,
        attachments: attachments,
        language: language,
      );
      return Right(model);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<CreatedQuizResult> createQuiz({
    required CreateQuizModel quizModel,
  }) async {
    try {
      final quizResult =
          await _quizGenerationClient.createQuiz(quizModel.toJson());
      return Right(quizResult);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }
}

@riverpod
QuizGenerationRepository quizGenerationRepository(
        QuizGenerationRepositoryRef ref) =>
    QuizGenerationRepositoryImpl(ref.read(quizGenerationClientProvider));
