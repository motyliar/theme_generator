import 'package:flutter/material.dart';
import 'package:theme_generate/core/themes/colors.dart';
import 'package:theme_generate/presentation/theme/widgets/widgets.dart';

const double _appBarHeight = 120;

class MobileAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: scaffoldColor,
        child: TopSiteMenu(
            leftMenu: Text('Theme Generator'),
            rightMenu: RightMenu(),
            centerMenu: Container(),
            flexLeft: 2,
            flexCenter: 1,
            flexRight: 3));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(_appBarHeight);
}
