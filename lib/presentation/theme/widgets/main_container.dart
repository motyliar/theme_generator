import 'package:flutter/material.dart';
import 'package:theme_generate/core/themes/colors.dart';

class MainContainer extends StatelessWidget {
  final Widget mainWidget;
  final double viewMargin;
  const MainContainer(
      {required this.mainWidget, required this.viewMargin, super.key});

  @override
  Widget build(BuildContext context) {
    final double viewAlignment = 2 * viewMargin;
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - viewAlignment,
        margin: EdgeInsets.all(viewMargin),
        decoration: BoxDecoration(
            color: mainContainerColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  blurRadius: 3.0,
                  spreadRadius: 3.0,
                  color: Colors.grey.withOpacity(0.3))
            ]),
        child: SingleChildScrollView(
          child: mainWidget,
        ),
      ),
    );
  }
}
