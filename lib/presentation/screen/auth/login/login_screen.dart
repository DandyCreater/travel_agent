import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:travel_agent/data/utils/color.dart';
import 'package:travel_agent/data/utils/constanta_string.dart';
import 'package:travel_agent/data/utils/text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obsecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, onboardScreen);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: ThemeColor.blackColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Masuk",
                style: ThemeText.titleText.copyWith(
                    color: ThemeColor.activeButtonColor, fontSize: 32),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                  "Selamat datang kembali, ayo buat penawaran dan dapatkan trip keinginanmu!",
                  style: ThemeText.normalText.copyWith(
                      color: ThemeColor.blackColor.withOpacity(0.5),
                      fontSize: 14)),
              const SizedBox(
                height: 15,
              ),
              Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "E-mail",
                        style: ThemeText.normalText.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: emailController,
                        validator: (value) {
                          if (!value!.contains("@")) {
                            return "Format Email Salah!";
                          } else if (value.isEmpty) {
                            return "Email tidak boleh kosong!";
                          } else {
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(16, 12, 16, 12),
                            hintText: "Masukan email anda disini",
                            hintStyle: ThemeText.normalText.copyWith(
                                fontSize: 14,
                                color: ThemeColor.blackColor.withOpacity(0.5)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: ThemeColor.blackColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: ThemeColor.blackColor)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.red)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Password",
                        style: ThemeText.normalText.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Password tidak boleh kosong!";
                          } else {
                            return null;
                          }
                        },
                        controller: passwordController,
                        obscureText: obsecure,
                        decoration: InputDecoration(
                            suffixIcon: InkWell(
                              onTap: () {
                                setState(() {
                                  obsecure = !obsecure;
                                });
                              },
                              child: Icon(
                                (obsecure == true)
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: ThemeColor.hintColor,
                              ),
                            ),
                            contentPadding:
                                const EdgeInsets.fromLTRB(16, 12, 16, 12),
                            hintText: "Masukan password anda disini",
                            hintStyle: ThemeText.normalText.copyWith(
                                fontSize: 14,
                                color: ThemeColor.blackColor.withOpacity(0.5)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: ThemeColor.blackColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: ThemeColor.blackColor)),
                            focusedErrorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.red)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide:
                                    const BorderSide(color: Colors.red))),
                      ),
                    ],
                  )),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          ThemeColor.activeButtonColor),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                    child: Text(
                      "Masuk",
                      style: ThemeText.whiteTextButton,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Atau",
                  style: ThemeText.normalText
                      .copyWith(color: ThemeColor.blackColor.withOpacity(0.5)),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(ThemeColor.whiteColor),
                        side: MaterialStateProperty.all(
                            const BorderSide(color: ThemeColor.hintColor)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/img/google_icon.svg"),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Masuk melalui Google Account",
                          style: ThemeText.normalText.copyWith(
                              fontSize: 12, color: ThemeColor.blackColor),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40,
                width: double.infinity,
                child: ElevatedButton(
                    style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        backgroundColor:
                            MaterialStateProperty.all(ThemeColor.whiteColor),
                        side: MaterialStateProperty.all(
                            const BorderSide(color: ThemeColor.hintColor)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)))),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset("assets/img/facebook_icon.svg"),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Masuk melalui Facebook Account",
                          style: ThemeText.normalText.copyWith(
                              fontSize: 12, color: ThemeColor.blackColor),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 16,
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, registerScreen);
                },
                child: RichText(
                    text: TextSpan(
                        text: "Belum punya akun?",
                        style: ThemeText.normalText.copyWith(fontSize: 14),
                        children: [
                      TextSpan(
                          text: " Daftar",
                          style: ThemeText.normalText.copyWith(
                              fontSize: 14,
                              color: ThemeColor.activeButtonColor))
                    ])),
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
