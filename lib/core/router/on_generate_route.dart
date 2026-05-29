import 'package:eshop/features/home/controller/home_controller.dart';
import 'package:eshop/features/home/presentation/views/home_view.dart';
import 'package:eshop/features/main/presentation/views/main_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import 'app_routes.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.splashView:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case AppRoutes.mainView:
      return MaterialPageRoute(builder: (context) => const MainView());
      case AppRoutes.homeView:
      return MaterialPageRoute(builder: (context) => const HomeView());

    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}