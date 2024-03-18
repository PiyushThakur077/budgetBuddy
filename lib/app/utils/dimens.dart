import 'package:flutter/material.dart';

class Dimens {
  static const RoundedRectangleBorder bottomSheetshape = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(22.0),
        topRight: Radius.circular(22.0),
      ),
      side: BorderSide(width: 2, color: Colors.white));

  static InputBorder customRoundedBorder = OutlineInputBorder(
    borderSide: const BorderSide(color: Colors.grey, width: 0.5),
    borderRadius: BorderRadius.circular(14.0),
  );
}
