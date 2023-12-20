import 'package:flutter/material.dart';
import 'package:theme_generate/core/const/router_const.dart';
import 'package:theme_generate/core/screen_templates/responsive.dart';
import 'theme.dart';

class ThemePageResponsive extends Responsive {
  const ThemePageResponsive()
      : super(
          mobile: const ThemeMobile(),
          tablet: const ThemeTablet(),
          deskopt: const ThemeDeskopt(),
        );
  static Route route() {
    return MaterialPageRoute(
        settings: const RouteSettings(name: kThemePage),
        builder: (context) => const ThemePageResponsive());
  }

  @override
  Widget build(BuildContext context) {
    return super.build(context);
  }
}
