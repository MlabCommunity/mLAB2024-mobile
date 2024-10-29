import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/common/widgets/spacers/vertical_spacers.dart';
import '../../../../core/extensions/context_extension.dart';
import '../application/quiz_generation_controller.dart';
import 'radio_list_tile.dart';
import '../../../../generated/l10n.dart';

enum QuestionNumberSelection { low, medium, high, }

extension NumberOfQuestions on QuestionNumberSelection{
  int get value {
    switch (this) {
      case QuestionNumberSelection.low:
        return 5;
      case QuestionNumberSelection.medium:
        return 10;
      case QuestionNumberSelection.high:
        return 15;
    }
  }
}

class QuestionCountPicker extends ConsumerStatefulWidget {
  const QuestionCountPicker({super.key});


  @override
  ConsumerState<QuestionCountPicker> createState() => _QuestionCountPickerState();
}

class _QuestionCountPickerState extends ConsumerState<QuestionCountPicker> {
  QuestionNumberSelection _selectedValue = QuestionNumberSelection.low;
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(quizGenerationControllerProvider);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).quizzCreationConfigureQuestionCount,
          style: context.textTheme.labelLarge,
        ),
        const CustomVSpacer(12),
        IRadioListTile<QuestionNumberSelection>(
          title: S.of(context).quizzCreationConfigureQuestionCount1,
          value: QuestionNumberSelection.low,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value!;
              state.maybeWhen(
                generating: (request) {
                  request = request.copyWith(numberOfQuestions: value.value);
                  ref.read(quizGenerationControllerProvider.notifier).modifyRequest(request);
                },
                orElse: () {},
              );
            });
          },
        ),
        const SmallVSpacer(),
        IRadioListTile<QuestionNumberSelection>(
          title: S.of(context).quizzCreationConfigureQuestionCount2,
          value: QuestionNumberSelection.medium,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value!;
              state.maybeWhen(
                generating: (request) {
                  request = request.copyWith(numberOfQuestions: value.value);
                  ref.read(quizGenerationControllerProvider.notifier).modifyRequest(request);
                },
                orElse: () {},
              );
            });
          },
        ),
        const SmallVSpacer(),
        IRadioListTile<QuestionNumberSelection>(
          title: S.of(context).quizzCreationConfigureQuestionCount3,
          value: QuestionNumberSelection.high,
          groupValue: _selectedValue,
          onChanged: (value) {
            setState(() {
              _selectedValue = value!;
              state.maybeWhen(
                generating: (request) {
                  request = request.copyWith(numberOfQuestions: value.value);
                  ref.read(quizGenerationControllerProvider.notifier).modifyRequest(request);
                },
                orElse: () {},
              );
            });
          },
        ),
      ],
    );
  }
}