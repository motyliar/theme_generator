import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_generate/core/themes/boxdecoration.dart';
import 'package:theme_generate/core/themes/colors.dart';
import 'package:theme_generate/core/themes/icons.dart';

import 'package:theme_generate/presentation/theme/widgets/widgets.dart';

const double _mainViewMargin = 10.0;
List<Widget> themeCreator = [ColorGenerator(), ColorGenerator()];

class ThemeDeskopt extends StatelessWidget {
  const ThemeDeskopt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldColor,
        body: MainContainer(
            mainWidget: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(8.0),
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: scaffoldColor.withOpacity(0.5)),
                  child: Column(
                    children: [
                      TopSiteMenu(
                        leftMenu: Container(
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(20),
                                decoration: menuBoxDecoration,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 8.0,
                                      bottom: 8.0,
                                      left: 10.0,
                                      right: 20.0),
                                  child: Text(
                                    'THEME GENERATOR',
                                    style: GoogleFonts.getFont('Roboto Mono',
                                        fontSize: 25, color: mainThemeColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        centerMenu: Container(),
                        rightMenu: RightMenu(),
                        flexLeft: 3,
                        flexCenter: 5,
                        flexRight: 3,
                      ),
                      Divider(
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      children: [
                        Container(
                            color: Colors.white, child: Text('new thema')),
                        Text('ADD NEW THEMA'),
                        TextButton(onPressed: () {}, child: Text('Add')),
                        Container(
                          decoration: menuBoxDecoration,
                          height: heightGenerator(100, themeCreator, context),
                          width: MediaQuery.of(context).size.width * 0.40,
                          child: ListView(
                            children: themeCreator,
                          ),
                        )
                      ],
                    )),
                    Expanded(
                        child: Container(
                      child: Text('Start Generate your Theme'),
                    )),
                  ],
                )
              ],
            ),
            viewMargin: _mainViewMargin));
  }
}

double heightGenerator(
    double height, List<Widget> widget, BuildContext context) {
  int numberOfItems = widget.length;
  double totalHeight = height * numberOfItems;
  if (totalHeight < 300) {
    return totalHeight;
  } else {
    return MediaQuery.of(context).size.height * 0.65;
  }
}
