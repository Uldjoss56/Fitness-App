import 'package:fitness_app/core/themes/theme.dart';
import 'package:fitness_app/features/main/main_screen.dart';
import 'package:fitness_app/features/main/start_screen.dart';
import 'package:fitness_app/features/providers/theme_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerStatefulWidget {
  const MainApp({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MainAppState();
}

class _MainAppState extends ConsumerState<MainApp> {
  final theme = CustomAppTheme.instance;
  final GoRouter _mainRouter = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return StartScreen();
        },
      ),
      GoRoute(
        path: '/main_screen',
        builder: (BuildContext context, GoRouterState state) {
          return MainScreen();
        },
      ),
    ],
  );
  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeModeProvider);
    return MaterialApp.router(
      themeMode: themeMode,
      theme: theme.lightTheme,
      darkTheme: theme.darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: _mainRouter,
    );
  }
}
