import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kDarkBlue = Color(0xFFFC7026);
const kAppBackground = Color(0xFFFFFFFF);
const kTileColor = Color(0xFFFC7026);
const kTileBorderColor = Color(0x20FC7026);
const kFontColor = Color(0xFFB4AAA7);
const kListColor = Color(0xFFFFFFFF);

var kTileText = GoogleFonts.bitter(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  letterSpacing: 1,
);

var kCardSummaryText = GoogleFonts.bitter(
  fontWeight: FontWeight.w400,
  fontSize: 14.0,
  color: kFontColor,
);

var kListTitle = GoogleFonts.bitter(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: kTileColor,
);

var kHeading = GoogleFonts.bitter(
  fontWeight: FontWeight.w900,
  fontSize: 20.0,
  color: kFontColor,
);

var kBottomBarStyle = GoogleFonts.bitter(
  fontWeight: FontWeight.w600,
  fontSize: 14.0,
);

// icons

const kCasesIcon = Icons.av_timer;
const kDeathIcon = CupertinoIcons.heart_solid;
const kRecoverIcon = CupertinoIcons.restart;
