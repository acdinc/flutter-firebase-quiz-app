import 'package:flutter/material.dart';

import '../../../core/utils/styles/styles.dart';
import '../models/option/option_model.dart';

class ModalBottomSheetContent extends StatelessWidget {
  const ModalBottomSheetContent({super.key, required this.option});

  final OptionModel option;

  @override
  Widget build(BuildContext context) {
    final isCorrect = option.isCorrect ?? false;

    return Padding(
      padding: const EdgeInsets.all(Styles.defaultPadding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _resultText(context, isCorrect),
          if (option.detail?.isNotEmpty ?? false) _detailText(context),
          _button(context, isCorrect),
        ],
      ),
    );
  }

  Padding _resultText(BuildContext context, bool isCorrect) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Styles.defaultPadding),
      child: Text(
        isCorrect ? 'Doğru cevap !' : 'Yanlış cevap !',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color:
              isCorrect ? Styles.correctAnswerColor : Styles.wrongAnswerColor,
        ),
      ),
    );
  }

  Padding _detailText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Styles.defaultPadding),
      child: Text(option.detail!),
    );
  }

  Padding _button(BuildContext context, bool isCorrect) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Styles.defaultPadding * 2),
      child: ElevatedButton(
        style: _buttonStyle(isCorrect),
        onPressed: () => Navigator.pop(context, isCorrect),
        child: Text(
          isCorrect ? 'Devam Et' : 'Tekrar Dene',
        ),
      ),
    );
  }

  ButtonStyle _buttonStyle(bool isCorrect) {
    return ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Styles.defaultRadius),
      ),
      backgroundColor:
          isCorrect ? Styles.correctAnswerColor : Styles.wrongAnswerColor,
    );
  }
}
