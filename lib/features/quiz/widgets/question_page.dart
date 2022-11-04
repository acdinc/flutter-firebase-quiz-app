import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/styles/styles.dart';
import '../../../core/widgets/navigation/custom_bottom_sheet.dart';
import '../models/option/option_model.dart';
import '../models/question/question_model.dart';
import '../providers/quiz_providers.dart';
import 'modal_bottom_sheet_content.dart';
import 'option_card.dart';

class QuestionPage extends StatelessWidget {
  const QuestionPage({super.key, required this.question});

  final QuestionModel question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Styles.defaultPadding * 1.5),
      child: Column(
        children: [
          Text(
            '${question.number}. ${question.text!.replaceAll(r'\n', '\n')}',
          ),
          Expanded(
            child: _Options(options: question.options ?? []),
          ),
        ],
      ),
    );
  }
}

class _Options extends ConsumerWidget {
  const _Options({required this.options});

  final List<OptionModel> options;

  Future<void> _openModalBottomSheet(
    BuildContext context,
    WidgetRef ref,
    OptionModel option,
  ) async {
    ref.read(quizControllerProvider.notifier).setState = option;

    await CustomBottomSheet.show(
      context,
      ModalBottomSheetContent(option: option),
    ).then((isCorrect) {
      if (isCorrect ?? false) {
        ref.read(quizControllerProvider.notifier).nextPage();
      }
    });
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: options.length,
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        vertical: Styles.defaultPadding,
      ),
      itemBuilder: (context, index) {
        final option = options[index];

        return GestureDetector(
          onTap: () => _openModalBottomSheet(context, ref, option),
          child: OptionCard(option: option),
        );
      },
    );
  }
}
