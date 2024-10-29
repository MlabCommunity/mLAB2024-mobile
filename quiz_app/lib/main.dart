import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/network/api_constants.dart';
import 'core/services/app_router.dart';
import 'core/services/language_provider.dart';
import 'core/services/session_provider.dart';
import 'core/theme/app_theme.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends ConsumerState<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appRouter = ref.read(appRouterProvider);
    final appLocale = ref.watch(languageProvider);
    return MaterialApp.router(
      locale: appLocale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter.config(
        deepLinkTransformer: (uri) async {
          final session = ref.read(sessionProvider);
          if (uri.host == ApiConstants.domain) {
            if (await session.isLoggedIn()) {
              ref.read(appRouterProvider).replaceAll([const DashboardRoute(), TakeQuizzRoute(joinCode: uri.pathSegments.last)]);
              return SynchronousFuture(uri);
            } else {
              ref.read(appRouterProvider).push(CreateGuestUserRoute(joinCode: uri.pathSegments.last));
              return SynchronousFuture(uri);
            }
          }
          return SynchronousFuture(uri);
        },
      ),
    );
  }
}
