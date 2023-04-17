import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_agent/data/utils/color.dart';

class ThemeText {
  static TextStyle splashText = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: ThemeColor.whiteColor,
  );

  static TextStyle onboardTitle = GoogleFonts.plusJakartaSans(
    fontWeight: FontWeight.w500,
    fontSize: 24,
    color: ThemeColor.blackColor,
  );

  static TextStyle whiteTextButton = GoogleFonts.publicSans(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: ThemeColor.whiteColor,
  );

  static TextStyle primaryTextButton = GoogleFonts.publicSans(
    color: ThemeColor.activeButtonColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle regularText = GoogleFonts.roboto(
    color: ThemeColor.blackColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle regularBoldText = GoogleFonts.roboto(
    color: ThemeColor.blackColor,
    fontSize: 12,
    fontWeight: FontWeight.w700,
  );

  static TextStyle titleText = GoogleFonts.roboto(
    color: ThemeColor.blackColor,
    fontSize: 28,
    fontWeight: FontWeight.w500,
  );

  static TextStyle subtitleText = GoogleFonts.roboto(
    color: ThemeColor.subtitleColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle hintText = GoogleFonts.roboto(
    color: ThemeColor.hintColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle dashboardTitleText = GoogleFonts.plusJakartaSans(
    color: ThemeColor.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w700,
  );

  static TextStyle dashboardSubTitleText = GoogleFonts.plusJakartaSans(
    color: ThemeColor.whiteColor,
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle titleRobotoText = GoogleFonts.roboto(
    color: ThemeColor.whiteColor,
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );

  static TextStyle normalText = GoogleFonts.roboto(
    color: ThemeColor.blackColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headerCard = GoogleFonts.roboto(
    color: ThemeColor.blackColor,
    fontSize: 12,
    fontWeight: FontWeight.w500,
  );

  static TextStyle priceCard = GoogleFonts.roboto(
    color: ThemeColor.hintColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
  );

  static TextStyle headerTripCard = GoogleFonts.roboto(
    color: ThemeColor.hintColor,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );

  static TextStyle headerUploadCard = GoogleFonts.roboto(
    color: ThemeColor.hintColor,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  );
}
