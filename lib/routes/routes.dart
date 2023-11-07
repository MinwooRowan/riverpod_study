import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_code_hooks/view/delayed_screen.dart';
import 'package:riverpod_code_hooks/view/future_keep_alive_screen.dart';
import 'package:riverpod_code_hooks/view/future_screen.dart';
import 'package:riverpod_code_hooks/view/home_screen.dart';
import 'package:riverpod_code_hooks/view/hooks/hooks_use_state_screen.dart';
import 'package:riverpod_code_hooks/view/hooks/hooks_home_screen.dart';
import 'package:riverpod_code_hooks/view/hooks/hooks_user_animation_controller.dart';
import 'package:riverpod_code_hooks/view/pass_argument_screen.dart';
import 'package:riverpod_code_hooks/view/state_screen.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = GoRouter(
    initialLocation: HomeScreen.route,
    routes: <RouteBase>[
      GoRoute(
        path: HomeScreen.route,
        name: HomeScreen.route,
        pageBuilder: (context, state) => buildWithFadetTransition(
          context: context,
          state: state,
          child: const HomeScreen(),
        ),
        routes: [
          GoRoute(
            path: HooksHomeScreen.route,
            name: HooksHomeScreen.route,
            pageBuilder: (context, state) => buildWithFadetTransition(
              context: context,
              state: state,
              child: const HooksHomeScreen(),
            ),
            routes: [
              GoRoute(
                path: HooksUseStateScreen.route,
                name: HooksUseStateScreen.route,
                pageBuilder: (context, state) => buildWithFadetTransition(
                  context: context,
                  state: state,
                  child: const HooksUseStateScreen(),
                ),
              ),
              GoRoute(
                path: HooksUseAnimationControllerScreen.route,
                name: HooksUseAnimationControllerScreen.route,
                pageBuilder: (context, state) => buildWithFadetTransition(
                  context: context,
                  state: state,
                  child: const HooksUseAnimationControllerScreen(),
                ),
              ),
            ],
          ),
          GoRoute(
            path: StateScreen.route,
            name: StateScreen.route,
            pageBuilder: (context, state) => buildWithFadetTransition(
              context: context,
              state: state,
              child: const StateScreen(),
            ),
          ),
          GoRoute(
            path: FutureScreen.route,
            name: FutureScreen.route,
            pageBuilder: (context, state) => buildWithFadetTransition(
              context: context,
              state: state,
              child: const FutureScreen(),
            ),
          ),
          GoRoute(
            path: DelayedScreen.route,
            name: DelayedScreen.route,
            pageBuilder: (context, state) => buildWithFadetTransition(
              context: context,
              state: state,
              child: const DelayedScreen(),
            ),
          ),
          GoRoute(
            path: FutureKeepAliveScreen.route,
            name: FutureKeepAliveScreen.route,
            pageBuilder: (context, state) => buildWithFadetTransition(
              context: context,
              state: state,
              child: const FutureKeepAliveScreen(),
            ),
          ),
          GoRoute(
            path: PassArgumentScreen.route,
            name: PassArgumentScreen.route,
            pageBuilder: (context, state) => buildWithFadetTransition(
              context: context,
              state: state,
              child: const PassArgumentScreen(),
            ),
          ),
        ],
      ),
    ],
  );
  return router;
});

CustomTransitionPage buildWithFadetTransition({
  int duration = 200,
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
    key: state.pageKey,
    transitionDuration: Duration(milliseconds: duration),
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}
