String templateFile(String className, String functionName, bool useMaterial3,
        String fontFamily,
        {String? listOfThemes}) =>
    '''
import 'package:flutter/material.dart';


class $className {
  $className._();

  static ThemeData $functionName = ThemeData(
  useMaterial3: $useMaterial3,
  fontFamily: '$fontFamily',
  $listOfThemes
  

  );
}
''';
