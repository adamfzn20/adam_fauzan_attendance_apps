import 'package:flutter/material.dart';
import '/resources/assets.gen.dart' as asset;

// ignore: non_constant_identifier_names
final AppImages = asset.Assets.lib.resources.images;

class AppColors {
  static const appBar = Color(0xFFFFFFFF);
  static const colorPrimary = Color(0xFF001767);
  static const colorSecondary = Color(0xFFA8AAAE);
  static const success = Color(0xFF28C76F);
  static const danger = Color(0xFFEA5455);
  static const warning = Color(0xFFFF9F43);
  static const info = Color(0xFF00CFE8);
  static const light = Color(0xFFDFDFE3);
  static const dark = Color(0xFF4B4B4B);
  static const background = Color(0xFFF8F8F8);
  static const surface = Color(0xFFFFFFFF);

  // textColour
  static const textColour00 = Color(0xFFFFFFFF);
  static const textColour10 = Color(0xFFE7E7E7);
  static const textColour20 = Color(0xFFCFCFCF);
  static const textColour30 = Color(0xFFB6B6B6);
  static const textColour40 = Color(0xFF9E9E9E);
  static const textColour50 = Color(0xFF868686);
  static const textColour60 = Color(0xFF6E6E6E);
  static const textColour70 = Color(0xFF565656);
  static const textColour80 = Color(0xFF3D3D3D);
  static const textColour90 = Color(0xFF252525);
  static const textColour100 = Color(0xFF0D0D0D);

  // gray
  static const gray25 = Color.fromRGBO(75, 70, 92, 0.015);
  static const gray50 = Color.fromRGBO(75, 70, 92, 0.030);
  static const gray100 = Color.fromRGBO(75, 70, 92, 0.1);
  static const gray200 = Color.fromRGBO(75, 70, 92, 0.2);
  static const gray300 = Color.fromRGBO(75, 70, 92, 0.3);
  static const gray400 = Color.fromRGBO(75, 70, 92, 0.4);
  static const gray500 = Color.fromRGBO(75, 70, 92, 0.5);
  static const gray600 = Color.fromRGBO(75, 70, 92, 0.6);
  static const gray700 = Color.fromRGBO(75, 70, 92, 0.7);
  static const gray800 = Color.fromRGBO(75, 70, 92, 0.8);
  static const gray900 = Color.fromRGBO(75, 70, 92, 0.9);

  // oldest
  static const colorAccent = Colors.white;
  static const black = Colors.black;
  static const white = Colors.white;
  static const grey = Colors.grey;
  static const red = Colors.red;
  static const borderColor = Colors.black12;
  static const subHintColor = Colors.black45;
}

class AppElevation {
  static BoxShadow elevation2px = BoxShadow(
    color: AppColors.black.withOpacity(0.05),
    spreadRadius: 0,
    blurRadius: 7,
    offset: const Offset(0, 3),
  );
  static BoxShadow elevation4px = BoxShadow(
    color: AppColors.black.withOpacity(0.10),
    spreadRadius: 0,
    blurRadius: 10,
    offset: const Offset(0, 2),
  );
  static BoxShadow elevation4pxBottom = BoxShadow(
    color: AppColors.black.withOpacity(0.04),
    spreadRadius: 0,
    blurRadius: 4,
    offset: const Offset(0, 4),
  );
  static BoxShadow elevation4pxUp = BoxShadow(
    color: AppColors.black.withOpacity(0.04),
    spreadRadius: 0,
    blurRadius: 4,
    offset: const Offset(0, -4),
  );
  static BoxShadow elevation7px = BoxShadow(
    color: AppColors.black.withOpacity(0.20),
    spreadRadius: 0,
    blurRadius: 7,
    offset: const Offset(0, 2),
  );
  static BoxShadow elevation9px = BoxShadow(
    color: AppColors.black.withOpacity(0.20),
    spreadRadius: 0,
    blurRadius: 11,
    offset: const Offset(0, 2),
  );
}

class AppGradient {
  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      AppColors.colorPrimary.withOpacity(0.5),
      AppColors.colorPrimary,
    ],
  );
}
