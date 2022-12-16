import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../features/auth/pages/splash_page.dart';
import '../../../features/quiz/pages/quiz_page.dart';
import '../../../features/topic/pages/topic_details_page.dart';
import '../../features/topic/model/topic/topic_model.dart';

part 'app_router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: 'splash', page: SplashPage, initial: true),
    AutoRoute(path: 'topics/:topicId', page: TopicDetailsPage),
    AutoRoute(path: 'quizzes/:quizId', page: QuizPage),
  ],
)
class AppRouter extends _$AppRouter {}
