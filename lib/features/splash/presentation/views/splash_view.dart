import 'package:eshop/core/router/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _excuteNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset("assets/images/grabber.svg")),
    );
  }

  void _excuteNavigation() async {
    await Future.delayed(Duration(seconds: 2));
    if (!mounted) return;
    Navigator.pushReplacementNamed(context, AppRoutes.mainView);
  }
}
