import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// colors
const kcPrimaryColor = Color(0xFF0B3C69);
const kcTextColor = Color(0xFF000000);
const kcSelectedTextColor = Colors.white;

// Wire Type Colors
const kcWireTypeTextColor = Colors.black;
const kcSelectedTypeTextColor = Colors.white;
const kcWireTypeButtonColor = Color(0xFFFCDCD2);
const kcSelectedWireTypeButtonColor = Color(0xFF0B3C69);

// sub title color
const kcSubTitleTextColor = Colors.black;

const kcBackgroundColor = LinearGradient(
  colors: [Color(0xFFFFC7BC), Color(0xFFE4D8B3)],
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
);
const kcContainerColor = Color(0x59FFFFFF);
const kcHeadingTextColor = Color(0xff0B3C69);

const kcUnSelectedButtonColor = Colors.grey;

// Calculate Button Colors
const kcCalculateButtonColor = Color(0xff004F16);
const kcCalculateTextColor = Color(0xFFFFFFFF);

const kcInfoTextTextColor = Color(0xFF636363);

// text style

// main Title
final TextStyle ktsMainTitleTextStyle = GoogleFonts.montserrat(
    fontSize: 30, color: kcPrimaryColor, fontWeight: FontWeight.bold);
// sub title
final TextStyle ktsSubTitleTextStyle = GoogleFonts.montserrat(
    fontSize: 26, color: kcSubTitleTextColor, fontWeight: FontWeight.bold);

// Wire Type
final TextStyle ktsWireTypeTitleTextStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold, fontSize: 22, color: kcWireTypeTextColor);
final TextStyle ktsSelectedWireTypeTitleTextStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold, fontSize: 22, color: kcSelectedTypeTextColor);

// Wire Type With Image
final TextStyle ktsWireTypeTitleWithButtonTextStyle = GoogleFonts.averiaLibre(
    fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white);

// Calculate Button
final TextStyle ktsCalculateButtonTextStyle = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white);

// OptionsTextStyle
final TextStyle ktsOptionsTextStyle = GoogleFonts.montserrat(
  fontSize: 18,color: Colors.black,
);
final TextStyle ktsSelectedOptionsTextStyle = GoogleFonts.montserrat(
  fontSize: 18,color: Colors.white,
);

final TextStyle ktsDropdownTextStyle =
    GoogleFonts.averiaLibre(color: Colors.white, fontSize: 18);

final TextStyle ktsSubHeadingTextStyle = GoogleFonts.montserrat(
  fontSize: 22,
);

final ktsInfoTextTextStyle = GoogleFonts.averiaLibre(
  fontSize: 18,
  color: kcInfoTextTextColor,
);

// const ktsDropdownTextStyle =
// TextStyle(color: Colors.white, fontFamily: 'AveriaLibre', fontSize: 18);

// TextStyle(
//   fontFamily: 'Montserrat',
//   fontSize: 22,
// );
