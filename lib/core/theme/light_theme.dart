import 'package:eshop/core/theme/app_colors.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  scaffoldBackgroundColor: AppColors.bgColor,
  primaryColor: AppColors.primaryColor,
  textTheme: TextTheme(
    displayLarge: TextStyle(
      fontSize: AppSizes.sp48,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.bold,
      fontFamily: GoogleFonts.balooThambi2().fontFamily,
    ),
    displayMedium: TextStyle(
      fontSize: AppSizes.sp20,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    displaySmall: TextStyle(
      fontSize: AppSizes.sp16,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    titleLarge: TextStyle(
      fontSize: AppSizes.sp14,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    titleMedium: TextStyle(
      fontSize: AppSizes.sp13,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    titleSmall: TextStyle(
      fontSize: AppSizes.sp12,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    bodyLarge: TextStyle(
      fontSize: AppSizes.sp11,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    bodyMedium: TextStyle(
      fontSize: AppSizes.sp10,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    bodySmall: TextStyle(
      fontSize: AppSizes.sp10,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    labelLarge: TextStyle(
      fontSize: AppSizes.sp10,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
    labelMedium: TextStyle(
      fontSize: AppSizes.sp10,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),

    labelSmall: TextStyle(
      fontSize: AppSizes.sp10,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w400,
      fontFamily: GoogleFonts.inter().fontFamily,
    ),
  ),
);
