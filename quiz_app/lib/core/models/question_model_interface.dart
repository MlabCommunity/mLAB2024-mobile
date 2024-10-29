import 'answer_model_interface.dart';

abstract class QuestionModelInterface {
  String get title;
  List<AnswerModelInterface> get answers;
}
