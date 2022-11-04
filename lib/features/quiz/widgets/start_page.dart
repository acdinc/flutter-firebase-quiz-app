import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/widgets/button/auth_button.dart';
import '../models/quiz/quiz_model.dart';
import '../providers/quiz_providers.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key, required this.quiz});

  final QuizModel quiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(quiz.subTitle ?? ''),
        ),
        Text(
          '''
    Bu testte ${quiz.questions?.length} soru bulunmaktadır.

    Her sorunun devamında doğru cevabı bulabileceksiniz.

    Lütfen hatalı soruları bize bildiriniz.

    Bol şans..
        ''',
          textAlign: TextAlign.center,
        ),
        Consumer(
          builder: (context, ref, child) => AuthButton(
            key: const Key('quiz_start_button'),
            isLoading: false,
            onPressed: ref.read(quizControllerProvider.notifier).nextPage,
            buttonText: 'Teste başla',
          ),
        ),
      ],
    );
  }
}
