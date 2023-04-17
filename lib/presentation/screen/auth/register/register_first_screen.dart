import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:travel_agent/data/utils/color.dart';
import 'package:travel_agent/data/utils/constanta_string.dart';
import 'package:travel_agent/data/utils/text.dart';

class RegisterFirstScreen extends StatefulWidget {
  const RegisterFirstScreen({super.key});

  @override
  State<RegisterFirstScreen> createState() => _RegisterFirstScreenState();
}

class _RegisterFirstScreenState extends State<RegisterFirstScreen> {
  List screen = [
    const SecondScreen(),
    const LastScreen(),
    const FirstScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: ThemeColor.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                  Navigator.pushNamed(context, registerScreen);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: ThemeColor.blackColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              CarouselSlider(
                items: screen.map((e) {
                  return Builder(builder: (BuildContext context) {
                    return Container(
                      child: e,
                    );
                  });
                }).toList(),
                options: CarouselOptions(
                  height: height * 0.9,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.9,
                  aspectRatio: 2.0,
                  initialPage: 2,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool clicked = false;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ThemeColor.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          Center(
            child: Text(
              "Daftar",
              style: ThemeText.titleRobotoText
                  .copyWith(color: ThemeColor.activeButtonColor),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Mari bergabung dengan Temantrip Travelagent. Dapatkan keuntungan sebagai Pelanggan dan juga sebagai Partner Travelagent! Buat permintaan dan dapatkan banyak pilihan penawaran dari travel agen yang berbeda disini.",
            style: ThemeText.normalText.copyWith(
                color: ThemeColor.blackColor.withOpacity(0.5),
                height: 1.5,
                fontSize: 14),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Daftar Sebagai : ",
              style: ThemeText.titleText
                  .copyWith(color: ThemeColor.blackColor, fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 175,
                width: 130,
                decoration: BoxDecoration(
                    color: ThemeColor.whiteColor,
                    border: Border.all(color: ThemeColor.hintColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.person,
                      color: ThemeColor.blackColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Pelanggan",
                      style: ThemeText.normalText,
                    )
                  ],
                ),
              ),
              Container(
                height: 175,
                width: 130,
                decoration: BoxDecoration(
                    color: ThemeColor.whiteColor,
                    border: Border.all(color: ThemeColor.hintColor),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.business_center,
                      color: ThemeColor.blackColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Partner",
                      style: ThemeText.normalText,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          InkWell(
            onTap: () {},
            child: RichText(
                text: TextSpan(
                    text: "Sudah punya akun?",
                    style: ThemeText.normalText,
                    children: [
                  TextSpan(
                    text: " Masuk",
                    style: ThemeText.normalText
                        .copyWith(color: ThemeColor.activeButtonColor),
                  )
                ])),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    clicked = !clicked;
                  });
                },
                child: SizedBox(
                  height: 40,
                  width: 30,
                  child: Center(
                    child: (clicked == true)
                        ? const Icon(Icons.check_box)
                        : Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                    color: ThemeColor.hintColor, width: 2)),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              SizedBox(
                height: 40,
                width: width * 0.7,
                child: Center(
                  child: RichText(
                      softWrap: true,
                      text: TextSpan(
                          text: "Dengan mendaftar akun, saya menyetujui",
                          style: ThemeText.normalText
                              .copyWith(fontSize: 12, height: 1.5),
                          children: [
                            TextSpan(
                                text: " Syarat dan Ketentuan",
                                style: ThemeText.normalText.copyWith(
                                    fontSize: 12,
                                    color: ThemeColor.activeButtonColor)),
                            TextSpan(
                                text: " serta",
                                style: ThemeText.normalText.copyWith(
                                    fontSize: 12,
                                    color: ThemeColor.blackColor)),
                            TextSpan(
                                text: " Kebijakan Privasi",
                                style: ThemeText.normalText.copyWith(
                                    fontSize: 12,
                                    color: ThemeColor.activeButtonColor))
                          ])),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ))),
    );
  }
}

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  final namaPTController = TextEditingController();
  final nibController = TextEditingController();
  File? image = null;
  File? imageKTP = null;

  pickImageKTPFromGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        imageKTP = imageTemporary;
      });
    } on PlatformException catch (e) {
      debugPrint("Failed to Pick Image : $e");
    }
  }

  pickImageFromGallery() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;

      final imageTemporary = File(image.path);
      setState(() {
        this.image = imageTemporary;
      });
    } on PlatformException catch (e) {
      debugPrint("Failed to Pick Image : $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ThemeColor.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Verifikasi Data Partner",
                      style: ThemeText.titleText.copyWith(
                          color: ThemeColor.activeButtonColor, fontSize: 28),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "*Semakin lengkap data yang didaftarkan, semakin besar kemungkinan terverivikasi.",
                    style: ThemeText.normalText.copyWith(
                        color: ThemeColor.blackColor.withOpacity(0.5),
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "*Tidak semua partner yang mendaftar kami setujui",
                    style: ThemeText.normalText.copyWith(
                        color: ThemeColor.blackColor.withOpacity(0.5),
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text("Panduan Verifikasi",
                      style: ThemeText.normalText.copyWith(
                          color: ThemeColor.activeButtonColor, fontSize: 24)),
                  const SizedBox(
                    height: 8,
                  ),
                  Image.asset("assets/img/ktp.png"),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 20,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("•",
                                style: ThemeText.normalText
                                    .copyWith(fontSize: 14)),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 20,
                        width: width * 0.72,
                        child: Text(
                          "Pastikan KTP masih berlaku",
                          style: ThemeText.normalText.copyWith(fontSize: 14),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 30,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("•",
                                style: ThemeText.normalText
                                    .copyWith(fontSize: 14)),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 30,
                        width: width * 0.72,
                        child: Text(
                          "Pastikan Posisi KTP ada di tengah dan bisa terlihat secara keseluruhan",
                          style: ThemeText.normalText.copyWith(fontSize: 14),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                          height: 40,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text("•",
                                style: ThemeText.normalText
                                    .copyWith(fontSize: 14)),
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      SizedBox(
                        height: 40,
                        width: width * 0.72,
                        child: Text(
                          "Pastikan benar-benar foto, bukan scan atau fotokopi",
                          style: ThemeText.normalText.copyWith(fontSize: 14),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Form(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upload Foto KTP",
                        style: ThemeText.normalText,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      InkWell(
                        onTap: () {
                          pickImageKTPFromGallery();
                        },
                        child: imageKTP != null
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 200,
                                  width: width,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ThemeColor.borderFotoColor),
                                      borderRadius: BorderRadius.circular(17)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.file(
                                      imageKTP!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: width,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: ThemeColor.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: ThemeColor.borderFotoColor)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 18),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.camera_alt,
                                        color: ThemeColor.borderFotoColor,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Masukan file KTP disini",
                                        style: ThemeText.normalText.copyWith(
                                            fontSize: 14,
                                            color: ThemeColor.blackColor
                                                .withOpacity(0.5)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Nama PT/CV (Optional)",
                        style: ThemeText.normalText.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.next,
                        controller: namaPTController,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.create,
                              size: 18,
                              color: ThemeColor.borderFotoColor,
                            ),
                            contentPadding:
                                const EdgeInsets.fromLTRB(0, 12, 16, 12),
                            hintText: "Masukan Nama PT Anda",
                            hintStyle: ThemeText.normalText.copyWith(
                                fontSize: 14,
                                color: ThemeColor.blackColor.withOpacity(0.5)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: ThemeColor.borderFotoColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: ThemeColor.borderFotoColor)),
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
                        "Nomor Induk Berusaha (NIB) (Optional)",
                        style: ThemeText.normalText.copyWith(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.phone,
                        textInputAction: TextInputAction.next,
                        controller: nibController,
                        decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.create,
                              size: 18,
                              color: ThemeColor.borderFotoColor,
                            ),
                            contentPadding:
                                const EdgeInsets.fromLTRB(0, 12, 16, 12),
                            hintText: "Masukan NIB Anda",
                            hintStyle: ThemeText.normalText.copyWith(
                                fontSize: 14,
                                color: ThemeColor.blackColor.withOpacity(0.5)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: ThemeColor.borderFotoColor)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: const BorderSide(
                                    color: ThemeColor.borderFotoColor)),
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
                        "Dokumentasi Wisata",
                        style: ThemeText.normalText,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      InkWell(
                        onTap: () {
                          pickImageFromGallery();
                        },
                        child: image != null
                            ? Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 200,
                                  width: width,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ThemeColor.borderFotoColor),
                                      borderRadius: BorderRadius.circular(17)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Image.file(
                                      image!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              )
                            : Container(
                                width: width,
                                height: 45,
                                decoration: BoxDecoration(
                                    color: ThemeColor.whiteColor,
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(
                                        color: ThemeColor.borderFotoColor)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 4, horizontal: 18),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.camera_alt,
                                        color: ThemeColor.borderFotoColor,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Masukan Dokumentasi disini",
                                        style: ThemeText.normalText.copyWith(
                                            fontSize: 14,
                                            color: ThemeColor.blackColor
                                                .withOpacity(0.5)),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                      ),
                    ],
                  )),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                ThemeColor.activeButtonColor),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        onPressed: () {},
                        child: Text(
                          "Selanjutnya",
                          style: ThemeText.whiteTextButton,
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ))),
    );
  }
}

class LastScreen extends StatefulWidget {
  const LastScreen({super.key});

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  final _formKey = GlobalKey<FormState>();
  final namaLengkapController = TextEditingController();
  final nohpController = TextEditingController();
  final alamatController = TextEditingController();
  final instagramController = TextEditingController();
  final linkedInController = TextEditingController();
  final facebookController = TextEditingController();
  final twitterController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColor.whiteColor,
      body: SafeArea(
          child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Verifikasi Data Partner",
                      style: ThemeText.titleText.copyWith(
                          color: ThemeColor.activeButtonColor, fontSize: 28),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "*Semakin lengkap data yang didaftarkan, semakin besar kemungkinan terverivikasi.",
                    style: ThemeText.normalText.copyWith(
                        color: ThemeColor.blackColor.withOpacity(0.5),
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "*Tidak semua partner yang mendaftar kami setujui",
                    style: ThemeText.normalText.copyWith(
                        color: ThemeColor.blackColor.withOpacity(0.5),
                        fontSize: 14),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Data Diri",
                    style: ThemeText.normalText.copyWith(fontSize: 24),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nama Lengkap",
                            style: ThemeText.normalText.copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Nama Lengkap Tidak Boleh Kosong!";
                              } else {
                                return null;
                              }
                            },
                            textInputAction: TextInputAction.next,
                            controller: namaLengkapController,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.create,
                                  size: 18,
                                  color: ThemeColor.borderFotoColor,
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 12, 16, 12),
                                hintText: "Masukan nama lengkap Anda disini",
                                hintStyle: ThemeText.normalText.copyWith(
                                    fontSize: 14,
                                    color:
                                        ThemeColor.blackColor.withOpacity(0.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: ThemeColor.borderFotoColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: ThemeColor.borderFotoColor)),
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
                            "Nomor Handphone",
                            style: ThemeText.normalText.copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Nomor Handphone Tidak Boleh Kosong!";
                              } else {
                                return null;
                              }
                            },
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            controller: nohpController,
                            decoration: InputDecoration(
                                prefixIcon: SizedBox(
                                  width: 40,
                                  child: Center(
                                    child: Text(
                                      "+62-",
                                      style: ThemeText.normalText.copyWith(
                                          color: ThemeColor.borderFotoColor),
                                    ),
                                  ),
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 14, 16, 12),
                                hintText: "8762552152",
                                hintStyle: ThemeText.normalText.copyWith(
                                    fontSize: 14,
                                    color:
                                        ThemeColor.blackColor.withOpacity(0.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: ThemeColor.borderFotoColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: ThemeColor.borderFotoColor)),
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
                            "Alamat",
                            style: ThemeText.normalText.copyWith(fontSize: 14),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Alamat Lengkap Tidak Boleh Kosong!";
                              } else {
                                return null;
                              }
                            },
                            textInputAction: TextInputAction.next,
                            controller: alamatController,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.create,
                                  size: 18,
                                  color: ThemeColor.borderFotoColor,
                                ),
                                contentPadding:
                                    const EdgeInsets.fromLTRB(0, 12, 16, 12),
                                hintText: "Masukan alamat lengkap Anda disini",
                                hintStyle: ThemeText.normalText.copyWith(
                                    fontSize: 14,
                                    color:
                                        ThemeColor.blackColor.withOpacity(0.5)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: ThemeColor.borderFotoColor)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: const BorderSide(
                                        color: ThemeColor.borderFotoColor)),
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
                        ],
                      )),
                  Text(
                    "Sosial Media (Min 2)",
                    style: ThemeText.normalText.copyWith(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Instagram",
                    style: ThemeText.normalText.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: instagramController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.create,
                          size: 18,
                          color: ThemeColor.borderFotoColor,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(0, 12, 16, 12),
                        hintText: "Instagram.com/",
                        hintStyle: ThemeText.normalText.copyWith(
                            fontSize: 14,
                            color: ThemeColor.blackColor.withOpacity(0.5)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: ThemeColor.borderFotoColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: ThemeColor.borderFotoColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "LinkedIn",
                    style: ThemeText.normalText.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: linkedInController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.create,
                          size: 18,
                          color: ThemeColor.borderFotoColor,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(0, 12, 16, 12),
                        hintText: "linkedin.com/",
                        hintStyle: ThemeText.normalText.copyWith(
                            fontSize: 14,
                            color: ThemeColor.blackColor.withOpacity(0.5)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: ThemeColor.borderFotoColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: ThemeColor.borderFotoColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Facebook",
                    style: ThemeText.normalText.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: facebookController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.create,
                          size: 18,
                          color: ThemeColor.borderFotoColor,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(0, 12, 16, 12),
                        hintText: "facebook.com/",
                        hintStyle: ThemeText.normalText.copyWith(
                            fontSize: 14,
                            color: ThemeColor.blackColor.withOpacity(0.5)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: ThemeColor.borderFotoColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: ThemeColor.borderFotoColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red))),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Twitter",
                    style: ThemeText.normalText.copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: twitterController,
                    decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.create,
                          size: 18,
                          color: ThemeColor.borderFotoColor,
                        ),
                        contentPadding:
                            const EdgeInsets.fromLTRB(0, 12, 16, 12),
                        hintText: "twitter.com/",
                        hintStyle: ThemeText.normalText.copyWith(
                            fontSize: 14,
                            color: ThemeColor.blackColor.withOpacity(0.5)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: ThemeColor.borderFotoColor)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(
                                color: ThemeColor.borderFotoColor)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: const BorderSide(color: Colors.red))),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                ThemeColor.activeButtonColor),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)))),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            showDialog(
                                context: context,
                                builder: (BuildContext contextData) {
                                  return const SuccessDialog();
                                });
                          }
                        },
                        child: Text(
                          "Kirim Data",
                          style: ThemeText.whiteTextButton,
                        )),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ))),
    );
  }
}

class SuccessDialog extends StatelessWidget {
  const SuccessDialog({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Container(
          height: height * 0.4,
          width: width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: ThemeColor.whiteColor),
          child: Column(
            children: [
              SvgPicture.asset("assets/img/success.svg"),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Berhasil diunggah!",
                style: ThemeText.titleText.copyWith(
                    color: ThemeColor.activeButtonColor, fontSize: 16),
              ),
              const SizedBox(
                height: 8,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Kami akan segera Proses Verifikasi dan Review data Anda. Silahkan cek email Anda secara berkala!",
                  style: ThemeText.titleText.copyWith(
                    color: ThemeColor.blackColor.withOpacity(0.5),
                    fontSize: 12,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              ThemeColor.activeButtonColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)))),
                      onPressed: () {
                        Navigator.pushNamed(context, loginScreen);
                      },
                      child: Text(
                        "Kembali Ke halaman Utama",
                        style: ThemeText.whiteTextButton.copyWith(fontSize: 14),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
