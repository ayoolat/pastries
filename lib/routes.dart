import 'package:flutter/cupertino.dart';
import 'package:pastries/screens/ProfileScreen.dart';
import 'package:pastries/screens/VeiwingScreen.dart';
import 'package:pastries/screens/cartScreen.dart';
import 'package:pastries/screens/categoriesScreen.dart';
import 'package:pastries/screens/dashboard.dart';
import 'package:pastries/screens/loginScreen/loginScreen.dart';
import 'package:pastries/screens/onBoardingScreen.dart';
import 'package:pastries/screens/otpScreen.dart';
import 'package:pastries/screens/registerScreen.dart';
import 'package:pastries/screens/searchScreen.dart';

import 'core/fadePageRoute.dart';

enum Routes {
  Login,
  Register,
  OnBoard,
  OTP,
  Dashboard,
  Search,
  Categories,
  Cart,
  View,
  Profile
}

class _Paths {
  static const String login = '/login';
  static const String onBoard = '/onBoard';
  static const String register = '/register';
  static const String otp = '/otp';
  static const String dashboard = '/dashboard';
  static const String search = '/search';
  static const String categories = '/categories';
  static const String cart = '/cart';
  static const String view = '/view';
  static const String profile = '/profile';

  static const Map<Routes, String> _pathMap = {
    Routes.OnBoard: onBoard,
    Routes.Login: login,
    Routes.Register: register,
    Routes.OTP: otp,
    Routes.Dashboard: dashboard,
    Routes.Search: search,
    Routes.Categories: categories,
    Routes.Cart: cart,
    Routes.View: view,
    Routes.Profile: profile,
  };

  static String of(Routes route) => _pathMap[route] ?? onBoard;
}

class AppNavigator {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case _Paths.login:
        return FadeRoute(page: LoginScreen());
      case _Paths.onBoard:
        return FadeRoute(page: const OnBoardingScreen());
      case _Paths.register:
        return FadeRoute(page: const RegisterScreen());
      case _Paths.otp:
        return FadeRoute(page: const OTPScreen());
      case _Paths.dashboard:
        return FadeRoute(page: const DashboardScreen());
      case _Paths.search:
        return FadeRoute(page: const SearchScreen());
      case _Paths.categories:
        return FadeRoute(page: const CategoriesScreen());
      case _Paths.cart:
        return FadeRoute(page: const CartScreen());
      case _Paths.view:
        return FadeRoute(page: const ViewingScreen());
      case _Paths.profile:
        return FadeRoute(page: const ProfileScreen());
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
