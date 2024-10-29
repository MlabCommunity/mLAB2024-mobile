// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ArchivePage]
class ArchiveRoute extends PageRouteInfo<void> {
  const ArchiveRoute({List<PageRouteInfo>? children})
      : super(
          ArchiveRoute.name,
          initialChildren: children,
        );

  static const String name = 'ArchiveRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ArchivePage();
    },
  );
}

/// generated route for
/// [ArchiveResultsPage]
class ArchiveResultsRoute extends PageRouteInfo<ArchiveResultsRouteArgs> {
  ArchiveResultsRoute({
    Key? key,
    required QuizzArchiveModel archivedQuizz,
    List<PageRouteInfo>? children,
  }) : super(
          ArchiveResultsRoute.name,
          args: ArchiveResultsRouteArgs(
            key: key,
            archivedQuizz: archivedQuizz,
          ),
          initialChildren: children,
        );

  static const String name = 'ArchiveResultsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ArchiveResultsRouteArgs>();
      return ArchiveResultsPage(
        key: args.key,
        archivedQuizz: args.archivedQuizz,
      );
    },
  );
}

class ArchiveResultsRouteArgs {
  const ArchiveResultsRouteArgs({
    this.key,
    required this.archivedQuizz,
  });

  final Key? key;

  final QuizzArchiveModel archivedQuizz;

  @override
  String toString() {
    return 'ArchiveResultsRouteArgs{key: $key, archivedQuizz: $archivedQuizz}';
  }
}

/// generated route for
/// [BasicErrorPage]
class BasicErrorRoute extends PageRouteInfo<BasicErrorRouteArgs> {
  BasicErrorRoute({
    Key? key,
    required VoidCallback onRefresh,
    required String refreshButtonText,
    required String imageAsset,
    required String errorText,
    List<PageRouteInfo>? children,
  }) : super(
          BasicErrorRoute.name,
          args: BasicErrorRouteArgs(
            key: key,
            onRefresh: onRefresh,
            refreshButtonText: refreshButtonText,
            imageAsset: imageAsset,
            errorText: errorText,
          ),
          initialChildren: children,
        );

  static const String name = 'BasicErrorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BasicErrorRouteArgs>();
      return BasicErrorPage(
        key: args.key,
        onRefresh: args.onRefresh,
        refreshButtonText: args.refreshButtonText,
        imageAsset: args.imageAsset,
        errorText: args.errorText,
      );
    },
  );
}

class BasicErrorRouteArgs {
  const BasicErrorRouteArgs({
    this.key,
    required this.onRefresh,
    required this.refreshButtonText,
    required this.imageAsset,
    required this.errorText,
  });

  final Key? key;

  final VoidCallback onRefresh;

  final String refreshButtonText;

  final String imageAsset;

  final String errorText;

  @override
  String toString() {
    return 'BasicErrorRouteArgs{key: $key, onRefresh: $onRefresh, refreshButtonText: $refreshButtonText, imageAsset: $imageAsset, errorText: $errorText}';
  }
}

/// generated route for
/// [CreateGuestUserPage]
class CreateGuestUserRoute extends PageRouteInfo<CreateGuestUserRouteArgs> {
  CreateGuestUserRoute({
    Key? key,
    required String joinCode,
    List<PageRouteInfo>? children,
  }) : super(
          CreateGuestUserRoute.name,
          args: CreateGuestUserRouteArgs(
            key: key,
            joinCode: joinCode,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateGuestUserRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateGuestUserRouteArgs>();
      return CreateGuestUserPage(
        key: args.key,
        joinCode: args.joinCode,
      );
    },
  );
}

class CreateGuestUserRouteArgs {
  const CreateGuestUserRouteArgs({
    this.key,
    required this.joinCode,
  });

  final Key? key;

  final String joinCode;

  @override
  String toString() {
    return 'CreateGuestUserRouteArgs{key: $key, joinCode: $joinCode}';
  }
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [ForgotPasswordPage]
class ForgotPasswordRoute extends PageRouteInfo<void> {
  const ForgotPasswordRoute({List<PageRouteInfo>? children})
      : super(
          ForgotPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForgotPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ForgotPasswordPage();
    },
  );
}

/// generated route for
/// [JoinByCodePage]
class JoinByCodeRoute extends PageRouteInfo<void> {
  const JoinByCodeRoute({List<PageRouteInfo>? children})
      : super(
          JoinByCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'JoinByCodeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const JoinByCodePage();
    },
  );
}

/// generated route for
/// [NewPasswordPage]
class NewPasswordRoute extends PageRouteInfo<void> {
  const NewPasswordRoute({List<PageRouteInfo>? children})
      : super(
          NewPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewPasswordRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const NewPasswordPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [QuizzCreationPage]
class QuizzCreationRoute extends PageRouteInfo<void> {
  const QuizzCreationRoute({List<PageRouteInfo>? children})
      : super(
          QuizzCreationRoute.name,
          initialChildren: children,
        );

  static const String name = 'QuizzCreationRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const QuizzCreationPage();
    },
  );
}

/// generated route for
/// [QuizzDetailsPage]
class QuizzDetailsRoute extends PageRouteInfo<QuizzDetailsRouteArgs> {
  QuizzDetailsRoute({
    Key? key,
    required String id,
    List<PageRouteInfo>? children,
  }) : super(
          QuizzDetailsRoute.name,
          args: QuizzDetailsRouteArgs(
            key: key,
            id: id,
          ),
          initialChildren: children,
        );

  static const String name = 'QuizzDetailsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QuizzDetailsRouteArgs>();
      return QuizzDetailsPage(
        key: args.key,
        id: args.id,
      );
    },
  );
}

class QuizzDetailsRouteArgs {
  const QuizzDetailsRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final String id;

  @override
  String toString() {
    return 'QuizzDetailsRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignInPage();
    },
  );
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SignUpPage();
    },
  );
}

/// generated route for
/// [SuccessfulPasswordResetRequestPage]
class SuccessfulPasswordResetRequestRoute extends PageRouteInfo<void> {
  const SuccessfulPasswordResetRequestRoute({List<PageRouteInfo>? children})
      : super(
          SuccessfulPasswordResetRequestRoute.name,
          initialChildren: children,
        );

  static const String name = 'SuccessfulPasswordResetRequestRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SuccessfulPasswordResetRequestPage();
    },
  );
}

/// generated route for
/// [TakeQuizzPage]
class TakeQuizzRoute extends PageRouteInfo<TakeQuizzRouteArgs> {
  TakeQuizzRoute({
    Key? key,
    required String joinCode,
    List<PageRouteInfo>? children,
  }) : super(
          TakeQuizzRoute.name,
          args: TakeQuizzRouteArgs(
            key: key,
            joinCode: joinCode,
          ),
          initialChildren: children,
        );

  static const String name = 'TakeQuizzRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TakeQuizzRouteArgs>();
      return TakeQuizzPage(
        key: args.key,
        joinCode: args.joinCode,
      );
    },
  );
}

class TakeQuizzRouteArgs {
  const TakeQuizzRouteArgs({
    this.key,
    required this.joinCode,
  });

  final Key? key;

  final String joinCode;

  @override
  String toString() {
    return 'TakeQuizzRouteArgs{key: $key, joinCode: $joinCode}';
  }
}

/// generated route for
/// [TakeQuizzResultPage]
class TakeQuizzResultRoute extends PageRouteInfo<TakeQuizzResultRouteArgs> {
  TakeQuizzResultRoute({
    Key? key,
    required QuizResultModel quizResult,
    List<PageRouteInfo>? children,
  }) : super(
          TakeQuizzResultRoute.name,
          args: TakeQuizzResultRouteArgs(
            key: key,
            quizResult: quizResult,
          ),
          initialChildren: children,
        );

  static const String name = 'TakeQuizzResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TakeQuizzResultRouteArgs>();
      return TakeQuizzResultPage(
        key: args.key,
        quizResult: args.quizResult,
      );
    },
  );
}

class TakeQuizzResultRouteArgs {
  const TakeQuizzResultRouteArgs({
    this.key,
    required this.quizResult,
  });

  final Key? key;

  final QuizResultModel quizResult;

  @override
  String toString() {
    return 'TakeQuizzResultRouteArgs{key: $key, quizResult: $quizResult}';
  }
}

/// generated route for
/// [TakeQuizzSummaryPage]
class TakeQuizzSummaryRoute extends PageRouteInfo<TakeQuizzSummaryRouteArgs> {
  TakeQuizzSummaryRoute({
    required QuizResultModel quizResult,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          TakeQuizzSummaryRoute.name,
          args: TakeQuizzSummaryRouteArgs(
            quizResult: quizResult,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'TakeQuizzSummaryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TakeQuizzSummaryRouteArgs>();
      return TakeQuizzSummaryPage(
        args.quizResult,
        key: args.key,
      );
    },
  );
}

class TakeQuizzSummaryRouteArgs {
  const TakeQuizzSummaryRouteArgs({
    required this.quizResult,
    this.key,
  });

  final QuizResultModel quizResult;

  final Key? key;

  @override
  String toString() {
    return 'TakeQuizzSummaryRouteArgs{quizResult: $quizResult, key: $key}';
  }
}

/// generated route for
/// [TakeQuizzWraperPage]
class TakeQuizzWraperRoute extends PageRouteInfo<void> {
  const TakeQuizzWraperRoute({List<PageRouteInfo>? children})
      : super(
          TakeQuizzWraperRoute.name,
          initialChildren: children,
        );

  static const String name = 'TakeQuizzWraperRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const TakeQuizzWraperPage();
    },
  );
}

/// generated route for
/// [WelcomePage]
class WelcomeRoute extends PageRouteInfo<void> {
  const WelcomeRoute({List<PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const WelcomePage();
    },
  );
}
