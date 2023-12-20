import 'package:flutter/material.dart';
import 'package:theme_generate/core/themes/colors.dart';

final BoxDecoration menuBoxDecoration = BoxDecoration(
    color: mainContainerColor,
    borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10), topRight: Radius.circular(10)),
    boxShadow: [
      BoxShadow(
          blurRadius: 3.0,
          spreadRadius: 3.0,
          color: Colors.grey.withOpacity(0.3))
    ]);
