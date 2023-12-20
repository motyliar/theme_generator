import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_generate/core/themes/boxdecoration.dart';
import 'package:theme_generate/core/themes/colors.dart';
import 'package:theme_generate/core/themes/icons.dart';

class RightMenu extends StatelessWidget {
  const RightMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(14),
      decoration: menuBoxDecoration,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, right: 10, left: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: userIcon,
                  color: scaffoldColor,
                ),
                SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(scaffoldColor)),
                  onPressed: () {},
                  child: Text(
                    'REGISTER',
                    style: GoogleFonts.getFont('Roboto Mono',
                        color: mainThemeColor),
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
