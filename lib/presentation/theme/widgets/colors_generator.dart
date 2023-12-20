import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:theme_generate/presentation/theme/widgets/widgets.dart';

class ColorGenerator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 0.40,
        child: ExpansionTile(
          title: Text('Colors'),
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Tooltip(
                      message: 'Main color for background',
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
                        child: Text(
                          'Primary Color',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Tooltip(
                      message: 'Click to change color',
                      child: GestureDetector(
                        onTap: () => showDialog(
                            context: context,
                            builder: (context) => const ColorAlertDialog()),
                        child: Container(
                          width: 30,
                          height: 30,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
