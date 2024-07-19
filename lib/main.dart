import 'package:flutter/material.dart';
import 'package:spotify_clone/core/configs/theme/app_theme.dart';
import 'package:spotify_clone/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: const SafeArea(child: Splash()));
  }
}
