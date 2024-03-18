import 'package:budget_buddy/app/data/colors.dart';
import 'package:budget_buddy/app/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get theme {
    return ThemeData(
      appBarTheme: AppBarTheme(
          foregroundColor: AppColors.textColor,
          elevation: 0,
          backgroundColor: AppColors.white,
          titleTextStyle: AppTextStyle.boldStyle(
            fontSize: 18,
            color: AppColors.black,
          ),
          centerTitle: false),
      useMaterial3: false,
      textTheme: GoogleFonts.montserratTextTheme(ThemeData.light().textTheme),
      brightness: Brightness.light,
      primaryColor: AppColors.primary,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      scaffoldBackgroundColor: AppColors.white,
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primary,
        height: 50,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16,
          ),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        elevation: 4,
        backgroundColor: AppColors.white,
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        floatingLabelStyle: AppTextStyle.mediumStyle(color: AppColors.primary),
        prefixStyle: AppTextStyle.semiBoldStyle(
            fontSize: 13, color: AppColors.textColor),
        hintStyle: AppTextStyle.regularStyle(
            color: AppColors.textColor.withOpacity(0.5)),
        labelStyle: AppTextStyle.regularStyle(
            fontSize: 14, color: AppColors.textColor.withOpacity(0.5)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.greyshadecolor,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: AppColors.primary)),
        disabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: AppColors.greyshadecolor)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.primary)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: AppColors.errorColor)),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.transparent,
      ),
      colorScheme: ColorScheme.fromSwatch()
          .copyWith(primary: AppColors.primary, secondary: AppColors.primary),
    );
  }
}
