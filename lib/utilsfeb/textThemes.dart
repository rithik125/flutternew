
import 'package:flutter/material.dart';
import 'package:flutternew/utilsfeb/mycolors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextThem {
  static TextStyle textHeading = GoogleFonts.cabin(
      fontSize: 35, color: MyColor.textColors, fontWeight: FontWeight.bold);

  static TextStyle bodyTextStyel = TextStyle(
    fontSize: 20,
    color: Colors.indigo[200],
    fontStyle: FontStyle.italic
  );
}
