import 'package:flutter/cupertino.dart';
import 'package:pastries/screens/loginScreen.dart';
import 'package:pastries/screens/onBoardingScreen.dart';

import 'core/fadePageRoute.dart';

enum Routes { Login, Register, OnBoard }

class _Paths {
  static const String login = '/login';
  static const String onBoard = '/onBoard';
  static const String register = '/register';

  static const Map<Routes, String> _pathMap = {
    Routes.OnBoard: onBoard,
    Routes.Login: login,
    Routes.Register: register
  };

  static String of(Routes route) => _pathMap[route] ?? onBoard;
}

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case _Paths.login:
        return FadeRoute(page: const LoginScreen());
      case _Paths.onBoard:
        return FadeRoute(page: const OnBoardingScreen());

      default:
        return FadeRoute(page: const OnBoardingScreen());
    }
  }

  static Future? push<T>(Routes route, [T? arguments]) =>
      state?.pushNamed(_Paths.of(route), arguments: arguments);

  static Future? replaceWith<T>(Routes route, [T? arguments]) =>
      state?.pushReplacementNamed(_Paths.of(route), arguments: arguments);

  static void pop() => state?.pop();

  static NavigatorState? get state => navigatorKey.currentState;
}
