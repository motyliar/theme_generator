import 'package:flutter/material.dart';
import 'package:theme_generate/core/themes/colors.dart';
import 'package:theme_generate/presentation/theme/widgets/main_container.dart';
import 'package:theme_generate/presentation/theme/widgets/top_site_menu.dart';
import 'package:theme_generate/presentation/theme/widgets/widgets.dart';

const double _mainViewMargin = 25.0;

class ThemeTablet extends StatelessWidget {
  const ThemeTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
      body: MainContainer(
          mainWidget: Column(
            children: [
              TopSiteMenu(
                  leftMenu: Container(),
                  rightMenu: RightMenu(),
                  centerMenu: Container(),
                  flexLeft: 2,
                  flexCenter: 2,
                  flexRight: 4)
            ],
          ),
          viewMargin: _mainViewMargin),
    );
  }
}
