import 'package:eshop/core/router/on_generate_route.dart';
import 'package:eshop/core/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(430, 932),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Grabber',
          theme: lightTheme,
          initialRoute: AppRoutes.splashView,
          onGenerateRoute: onGenerateRoute,
        );
      },
    );
  }
}
