import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:travel_agent/data/utils/color.dart';
import 'package:travel_agent/data/utils/constanta_string.dart';
import 'package:travel_agent/data/utils/text.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ThemeColor.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: SizedBox(
                      height: height * 0.52,
                      width: double.infinity,
                      child: Image.asset("assets/img/onboarding.png"))),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Pilih paket trip yang Anda mau dan langsung ajukan penawaran",
                style: ThemeText.subtitleText
                    .copyWith(fontSize: 26, color: ThemeColor.blackColor),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Dapatkan penawaran paket trip yang lebih  menguntungkan dan sesuai kriteria kamu!",
                style: ThemeText.normalText.copyWith(
                  color: ThemeColor.blackColor.withOpacity(0.4),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                        backgroundColor: MaterialStateProperty.all(
                            ThemeColor.activeButtonColor)),
                    onPressed: () {
                      Navigator.pushNamed(context, registerScreen);
                    },
                    child: Text(
                      "Daftar",
                      style: ThemeText.whiteTextButton,
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        side: MaterialStateProperty.all(const BorderSide(
                            color: ThemeColor.activeButtonColor)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                        backgroundColor:
                            MaterialStateProperty.all(ThemeColor.whiteColor)),
                    onPressed: () {
                      Navigator.pushNamed(context, loginScreen);
                    },
                    child: Text(
                      "Masuk",
                      style: ThemeText.whiteTextButton
                          .copyWith(color: ThemeColor.activeButtonColor),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
