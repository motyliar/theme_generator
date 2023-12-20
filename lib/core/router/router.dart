import 'package:flutter/material.dart';
import 'package:theme_generate/presentation/theme/view/theme_page_responsive.dart';
import '../const/router_const.dart';

class AppRouter {
  static Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case kThemePage:
        return ThemePageResponsive.route();
      default:
        return ThemePageResponsive.route();
    }
  }
}
