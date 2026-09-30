import 'package:flutter/material.dart';

const kBottomContainerHeight = 80.0;
const kActiveCardColour = Color(0xFF2C3E50);
const kInactiveCardColour = Color(0xFF34495E);
const kBottomContainerColour = Color(0xFF3498DB);
const kAccentColor = Color(0xFFE74C3C);

const kLabelTextStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.white70,
  letterSpacing: 1.2,
);

const kNumberTextStyle = TextStyle(
  fontSize: 60.0,
  fontWeight: FontWeight.w900,
  color: Colors.white,
  letterSpacing: 1.5,
);

const kLargeButtonTextStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.5,
);

const kTitleTextStyle = TextStyle(
  fontSize: 52.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  letterSpacing: 1.5,
);

const kResultTextStyle = TextStyle(
  color: Color(0xFF2ECC71),
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  letterSpacing: 1.2,
);

const kBMITextStyle = TextStyle(
  fontSize: 110.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  letterSpacing: 1.5,
);

const kBodyTextStyle = TextStyle(
  fontSize: 24.0,
  color: Colors.white70,
  letterSpacing: 1.2,
);

// Card decoration
final kCardDecoration = BoxDecoration(
  color: kActiveCardColour,
  borderRadius: BorderRadius.circular(15.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black26,
      blurRadius: 10.0,
      offset: Offset(0, 5),
    ),
  ],
);
