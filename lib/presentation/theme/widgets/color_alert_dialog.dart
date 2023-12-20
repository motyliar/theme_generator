import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

TextEditingController _hexInputController = TextEditingController();
final colorShades = generateShades(Colors.amber);

class ColorAlertDialog extends StatelessWidget {
  const ColorAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('Pick a color'),
        content: SingleChildScrollView(
          child: Column(
            children: [
              ColorPicker(
                hexInputBar: true,
                displayThumbColor: true,
                pickerColor: Colors.amber,
                onColorChanged: (value) {},
                labelTypes: const [],
                hexInputController: _hexInputController,
                enableAlpha: true,
                portraitOnly: true,
                pickerAreaBorderRadius: BorderRadius.circular(10),
                colorPickerWidth: 200,
                pickerAreaHeightPercent: 1.5,
              ),
              SizedBox(
                width: 250,
                height: 30,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: colorShades.length,
                    itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.only(left: 3),
                        width: 25,
                        height: 20,
                        color: colorShades[index])),
              )
            ],
          ),
        ));
  }
}

List<Color> generateShades(Color color) {
  List<Color> shades = [];
  for (double i = 0.1; i < 1; i += 0.1) {
    shades.add(color.withOpacity(i));
  }
  return shades;
}
