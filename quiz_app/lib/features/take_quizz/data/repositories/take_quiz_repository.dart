import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/server_exception.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/quiz_participation_model.dart';
import '../../domain/quiz_result_model.dart';
import '../../domain/submit_quiz_model.dart';
import '../data_sources/take_quiz_client.dart';

part 'take_quiz_repository.g.dart';

abstract class TakeQuizRepository {
  ResultFuture<String> joinQuiz({required String joinCode});
  ResultFuture<void> submitQuiz({required SubmitQuizModel submitQuizModel});
  ResultFuture<QuizParticipationModel> getQuizParticipation({required String id});
  ResultFuture<QuizResultModel> getQuizResult({required String id});
}

class TakeQuizRepositoryImpl implements TakeQuizRepository {
  final TakeQuizClient _takeQuizClient;

  TakeQuizRepositoryImpl(this._takeQuizClient);

  @override
  ResultFuture<void> submitQuiz({
    required SubmitQuizModel submitQuizModel,
  }) async {
    try {
      await _takeQuizClient.submitParticipation(submitQuizModel.toJson());
      return const Right(null);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<QuizParticipationModel> getQuizParticipation({required String id}) async {
    try {
      final result = await _takeQuizClient.getQuizParticipation(id);
      return Right(result);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<QuizResultModel> getQuizResult({required String id}) async {
    try {
      final result = await _takeQuizClient.getQuizResult(id);
      return Right(result);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<String> joinQuiz({required String joinCode}) async {
    try {
      final result = await _takeQuizClient.joinQuiz(joinCode);
      return Right(result);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }
}

@riverpod
TakeQuizRepository takeQuizRepository(TakeQuizRepositoryRef ref) => TakeQuizRepositoryImpl(ref.read(takeQuizClientProvider));
