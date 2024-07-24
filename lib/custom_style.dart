import 'package:flutter/material.dart';

class CustomTextStyle {
  static const TextStyle headOfAppText = TextStyle(
    fontSize: 25.0,
    color: Colors.white,
  );
  static const TextStyle buttonText = TextStyle(
    fontSize: 18.0,
    color: Colors.white,
  );
}

class CustomButtonStyle {
  static const ButtonStyle trueButton = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.red),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero),
      ),
    ),
  );
  static const ButtonStyle falseButton = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll(Colors.blue),
    shape: MaterialStatePropertyAll(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.zero),
      ),
    ),
  );
}
