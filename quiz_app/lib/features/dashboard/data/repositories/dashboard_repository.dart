import 'package:dartz/dartz.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/errors/server_exception.dart';
import '../../../../core/utils/typedefs.dart';
import '../../domain/quiz_list_model.dart';
import '../data_sources/dashboard_client.dart';

part 'dashboard_repository.g.dart';

abstract class DashboardRepository {
  ResultFuture<QuizListModel> getQuizList(int page, int pageSize);
  ResultFuture<void> deleteQuiz(String id);
}

class DashboardRepositoryImpl implements DashboardRepository {
  DashboardRepositoryImpl(this._client);

  final DashboardClient _client;

  @override
  ResultFuture<void> deleteQuiz(String id) async {
    try {
      await _client.deleteQuiz(id);
      return const Right(null);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }

  @override
  ResultFuture<QuizListModel> getQuizList(int page, int pageSize) async {
    try {
      final model = await _client.getQuizList(page, pageSize);
      return Right(model);
    } catch (e) {
      return Left(ServerException(message: e.toString()));
    }
  }
}

@riverpod
DashboardRepository dashboardRepository(DashboardRepositoryRef ref) =>
    DashboardRepositoryImpl(ref.read(dashboardClientProvider));
