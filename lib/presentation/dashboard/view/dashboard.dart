import 'dart:convert';
import 'dart:html' as html;
import 'package:dart_code_viewer2/dart_code_viewer2.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:theme_generate/data/repository/file_template/data/file_template_const.dart';
import 'package:theme_generate/data/usecases/file_template/create_file.dart';
import 'package:theme_generate/data/usecases/file_template/download_file.dart';
import 'package:theme_generate/domain/file_template/file_template_data.dart';
import 'package:theme_generate/domain/file_template/file_template_repository_impl.dart';

String fileContent = '''
import 'package:flutter/material.dart'
class ThemeClass extends Theme {
 print('this is your generate file');
}
''';

Color pickerColor = Color(0xff443a49);
Color currentColor = Color(0xff443a49);

void changeColor(Color color) {
  currentColor = color;
}

class Dashboard extends StatefulWidget {
  String font;

  Dashboard({super.key, this.font = 'poppins'});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  TextEditingController _textController = TextEditingController();
  FontWeight _fontWeight = FontWeight.normal;
  bool isBold = false;
  String styleOfFont = 'Roboto';
  String changeFont(String font) {
    setState(() {
      styleOfFont = font;
    });
    return font;
  }

  void changeFontWeight() {
    setState(() {
      isBold == true ? isBold = false : isBold = true;
      isBold ? _fontWeight = FontWeight.bold : _fontWeight = FontWeight.normal;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                const Text(
                  'Please downoload your theme:',
                ),
                TextButton(
                  onPressed: () {
                    CreateFile(
                            fileTemplateRepository: FileTemplateRepositoryImpl(
                                fileTemplateData: FileTemplateDataImple()))
                        .execute(
                            'newFile',
                            templateFile(
                              'mytheme',
                              'lightMode',
                              true,
                              'Poppins',
                            ));
                  },
                  child: const Text(
                    'create',
                  ),
                ),
                Text('To jest przykładowy tekst',
                    style: GoogleFonts.getFont(styleOfFont,
                        textStyle: TextStyle(
                            color: Colors.yellow,
                            fontSize: 30,
                            fontWeight: _fontWeight))),
                SizedBox(
                  width: 150,
                  child: TextField(
                    controller: _textController,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                        onPressed: () => changeFontWeight(),
                        icon: Icon(Icons.chair)),
                    TextButton(
                        onPressed: () {
                          setState(() {
                            styleOfFont = changeFont(_textController.text);
                          });
                          // print(font);
                        },
                        child: Text('set font family')),
                  ],
                ),
                TextButton(onPressed: () {}, child: Text('download')),
                TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: ((context) => AlertDialog(
                              title: const Text(
                                'pick a color',
                              ),
                              content: SingleChildScrollView(
                                child: ColorPicker(
                                    pickerColor: pickerColor,
                                    onColorChanged: changeColor),
                              ),
                            )));
                  },
                  child: Text('color to change'),
                ),
                // Container(width: 300, height: 300, child: IconList()),
              ],
            ),
          ),
          Expanded(
              flex: 2,
              child: DartCodeViewer(
                templateFile('MyTheme', 'themeLight', true, 'arial'),
                backgroundColor: Colors.black,
                baseStyle: TextStyle(color: Color.fromARGB(255, 133, 150, 168)),
                classStyle: TextStyle(color: Colors.green),
                stringStyle: TextStyle(
                  color: Color.fromARGB(255, 155, 102, 24),
                ),
                keywordStyle:
                    TextStyle(color: Color.fromARGB(255, 77, 36, 172)),
                showCopyButton: false,
                width: 300,
                height: 300,
              )),
        ],
      )),
    );
  }
}

// class IconList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: [
//         for (var codePoint in _getAllMaterialIconsCodePoints())
//           ListTile(
//             leading: Icon(IconData(codePoint, fontFamily: 'MaterialIcons')),
//             title: Text('0x${codePoint.toRadixString(16)}'),
//           ),
//       ],
//     );
//   }

//   List<int> _getAllMaterialIconsCodePoints() {
//     const int startCodePoint = 0xe000;
//     const int endCodePoint = 0xeb4c;

//     return List.generate(endCodePoint - startCodePoint + 1, (index) {
//       return startCodePoint + index;
//     });
//   }
// }
