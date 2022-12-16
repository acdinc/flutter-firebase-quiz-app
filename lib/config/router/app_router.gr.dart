// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    TopicDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TopicDetailsRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: TopicDetailsPage(
          key: args.key,
          topic: args.topic,
        ),
      );
    },
    QuizRoute.name: (routeData) {
      final args = routeData.argsAs<QuizRouteArgs>();
      return AdaptivePage<dynamic>(
        routeData: routeData,
        child: QuizPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'splash',
          fullMatch: true,
        ),
        RouteConfig(
          SplashRoute.name,
          path: 'splash',
        ),
        RouteConfig(
          TopicDetailsRoute.name,
          path: 'topics/:topicId',
        ),
        RouteConfig(
          QuizRoute.name,
          path: 'quizzes/:quizId',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: 'splash',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [TopicDetailsPage]
class TopicDetailsRoute extends PageRouteInfo<TopicDetailsRouteArgs> {
  TopicDetailsRoute({
    Key? key,
    required TopicModel topic,
  }) : super(
          TopicDetailsRoute.name,
          path: 'topics/:topicId',
          args: TopicDetailsRouteArgs(
            key: key,
            topic: topic,
          ),
        );

  static const String name = 'TopicDetailsRoute';
}

class TopicDetailsRouteArgs {
  const TopicDetailsRouteArgs({
    this.key,
    required this.topic,
  });

  final Key? key;

  final TopicModel topic;

  @override
  String toString() {
    return 'TopicDetailsRouteArgs{key: $key, topic: $topic}';
  }
}

/// generated route for
/// [QuizPage]
class QuizRoute extends PageRouteInfo<QuizRouteArgs> {
  QuizRoute({
    Key? key,
    required String id,
  }) : super(
          QuizRoute.name,
          path: 'quizzes/:quizId',
          args: QuizRouteArgs(
            key: key,
            id: id,
          ),
        );

  static const String name = 'QuizRoute';
}

class QuizRouteArgs {
  const QuizRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'QuizRouteArgs{key: $key, id: $id}';
  }
}
