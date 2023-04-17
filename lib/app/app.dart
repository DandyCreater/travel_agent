import 'package:flutter/material.dart';
import 'package:travel_agent/app/routes.dart';
import 'package:travel_agent/data/utils/constanta_string.dart';
import 'package:travel_agent/presentation/screen/onboarding/onboarding_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    initialRoute: onboardScreen,
    onGenerateRoute: Routes().onGenerateRoute,
    );
  }
}
