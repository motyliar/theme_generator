import 'package:flutter/material.dart';

const int _minimumView = 500;
const int _maxView = 1100;

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget deskopt;
  const Responsive(
      {required this.mobile,
      required this.tablet,
      required this.deskopt,
      super.key});

  @override
  Widget build(BuildContext context) {
    final mainWidth = MediaQuery.of(context).size.width;
    if (mainWidth <= _minimumView) {
      return mobile;
    } else if (mainWidth > _minimumView && mainWidth < _maxView) {
      return tablet;
    } else {
      return deskopt;
    }
  }
}
