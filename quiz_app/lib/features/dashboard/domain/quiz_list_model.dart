import 'package:freezed_annotation/freezed_annotation.dart';

import 'quiz_dashboard_model.dart';

part 'quiz_list_model.freezed.dart';
part 'quiz_list_model.g.dart';

@freezed
class QuizListModel with _$QuizListModel {
  const factory QuizListModel({
    required List<QuizDashboardModel> items,
    required int totalPages,
    required int totalItemsCount,
    required int itemsFrom,
    required int itemsTo,
  }) = _QuizListModel;

  factory QuizListModel.fromJson(Map<String, dynamic> json) =>
      _$QuizListModelFromJson(json);
}