import 'package:flutter/material.dart';
import 'package:theme_generate/core/const/router_const.dart';
import 'package:theme_generate/core/router/router.dart';
import 'package:theme_generate/presentation/dashboard/view/dashboard.dart';
import 'package:theme_generate/presentation/theme/view/theme_page_responsive.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: AppRouter.onGenerate,
      initialRoute: kThemePage,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
    );
  }
}
