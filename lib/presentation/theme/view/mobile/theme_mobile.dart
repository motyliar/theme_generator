import 'package:flutter/material.dart';
import 'package:theme_generate/core/themes/colors.dart';
import 'package:theme_generate/presentation/theme/widgets/main_container.dart';
import 'package:theme_generate/presentation/theme/widgets/widgets.dart';

const double mainViewMargin = 20.0;

class ThemeMobile extends StatelessWidget {
  const ThemeMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldColor,
        appBar: MobileAppBar(),
        body: MainContainer(
            mainWidget: Column(
              children: [Text('Mobile')],
            ),
            viewMargin: mainViewMargin));
  }
}
