import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../application/quiz_generation_controller.dart';
import 'question_type_button.dart';
import '../../../../generated/l10n.dart';

enum QuestionType { singleChoice, trueFalse }

extension QuestionTypeEx on QuestionType {
  String get name {
    switch (this) {
      case QuestionType.singleChoice:
        return 'SingleChoice';
      case QuestionType.trueFalse:
        return 'TrueFalse';
    }
  }
}

class QuestionTypePicker extends ConsumerStatefulWidget {
  const QuestionTypePicker({super.key});

  @override
  ConsumerState<QuestionTypePicker> createState() => _QuestionTypePickerState();
}

class _QuestionTypePickerState extends ConsumerState<QuestionTypePicker> {
  bool multipleChoice = false;
  bool trueFalse = false;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(quizGenerationControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).quizzCreationConfigureTypeQuestion,
          style: context.textTheme.labelLarge,
        ),
        const CustomVSpacer(12),
        QuestionTypeButton(
          title: S.of(context).quizzCreationConfigureType1,
          value: multipleChoice,
          onChanged: (value) {
            setState(() {
              value = !value;
              multipleChoice = value;
              if (value) {
                state.maybeWhen(
                  generating: (request) {
                    request = request.copyWith(questionTypes: [...request.questionTypes, QuestionType.singleChoice.name]);
                    ref.read(quizGenerationControllerProvider.notifier).modifyRequest(request);
                  },
                  orElse: () {},
                );
              } else {
                state.maybeWhen(
                  generating: (request) {
                    request = request.copyWith(
                        questionTypes: request.questionTypes.where((element) => element != QuestionType.singleChoice.name).toList());
                    ref.read(quizGenerationControllerProvider.notifier).modifyRequest(request);
                  },
                  orElse: () {},
                );
              }
            });
          },
        ),
        const SmallVSpacer(),
        QuestionTypeButton(
          title: S.of(context).quizzCreationConfigureType2,
          value: trueFalse,
          onChanged: (value) {
            setState(() {
              value = !value;
              trueFalse = value;
              if (value) {
                state.maybeWhen(
                  generating: (request) {
                    request = request.copyWith(questionTypes: [...request.questionTypes, QuestionType.trueFalse.name]);
                    ref.read(quizGenerationControllerProvider.notifier).modifyRequest(request);
                  },
                  orElse: () {},
                );
              } else {
                state.maybeWhen(
                  generating: (request) {
                    request = request.copyWith(
                        questionTypes: request.questionTypes.where((element) => element != QuestionType.trueFalse.name).toList());
                    ref.read(quizGenerationControllerProvider.notifier).modifyRequest(request);
                  },
                  orElse: () {},
                );
              }
            });
          },
        ),
      ],
    );
  }
}
