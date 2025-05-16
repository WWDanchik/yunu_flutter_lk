import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:yunu_lk_flutter/views/screens/product/products_list_screen.dart';

import '../../viewmodels/auth/auth_notifier.dart';
import '../screens/dashboard_screen.dart';
import '../screens/forgot_password_screen.dart';
import '../screens/login_screen.dart';
import '../screens/vendor_screen.dart';

part 'router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
const publicRoutes = <String>['/login', '/forgot_password'];
const privateRoutes = <String>['/dashboard', '/vendor'];

class AppRoutes {
  static const dashboard = "/dashboard";
  static const login = "/login";
  static const vendor = "vendor";
  static const forgotPassword = "/forgot_password";
  static const productList = "/product/list";

  static const List<String> public = [login, forgotPassword];
  static const List<String> private = [dashboard, vendor, productList];
  static const List<String> allRoutes = [
    dashboard,
    login,
    vendor,
    forgotPassword,
    productList,
  ];
}

@riverpod
GoRouter goRouter(Ref ref) {
  final loggedIn = ref.watch(authNotifierProvider);

  return GoRouter(
    initialLocation: '/dashboard',
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => DashboardScreen(),
      ),
      GoRoute(
        path: '/vendor',
        builder: (context, state) => const VendorScreen(),
      ),
      GoRoute(path: '/login', builder: (context, state) => LoginScreen()),
      GoRoute(
        path: '/forgot_password',
        builder: (context, state) => const ForgotPasswordScreen(),
      ),
      GoRoute(
        path: '/product/list',
        parentNavigatorKey: rootNavigatorKey,
        builder: (context, state) => const ProductsListScreen(),
      ),
    ],
    redirect: (context, state) {
      final location = state.matchedLocation;

      if (!loggedIn &&
          AppRoutes.private.any(
            (route) => location == route || location.startsWith('$route/'),
          )) {
        return AppRoutes.login;
      }

      if (loggedIn && AppRoutes.public.contains(location)) {
        return AppRoutes.dashboard;
      }

      if (!AppRoutes.allRoutes.contains(location)) {
        return loggedIn ? AppRoutes.dashboard : AppRoutes.login;
      }

      return null;
    },
  );
}
