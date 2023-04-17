import 'package:flutter/material.dart';
import 'package:travel_agent/data/utils/constanta_string.dart';
import 'package:travel_agent/presentation/screen/auth/login/login_screen.dart';
import 'package:travel_agent/presentation/screen/auth/register/register_first_screen.dart';
import 'package:travel_agent/presentation/screen/auth/register/register_screen.dart';
import 'package:travel_agent/presentation/screen/onboarding/onboarding_screen.dart';

class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboardScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case loginScreen:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
        );
      case registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterScreen(),
        );
      case registerSplitScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterFirstScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            appBar: AppBar(
              leading: InkWell(
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            body: Container(
              color: Colors.white,
              child: const Center(
                child: Text("Halaman Sedang Dalam Pengerjaan"),
              ),
            ),
          ),
        );
    }
  }
}
