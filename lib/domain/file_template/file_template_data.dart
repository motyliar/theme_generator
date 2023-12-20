import 'dart:convert';
import 'dart:html' as html;
import 'package:flutter/services.dart';

abstract class FileTemplateData {
  String createFile(String fileName, String fileContent);
  void downloadFile(String url, String fileName);
}

class FileTemplateDataImple extends FileTemplateData {
  @override
  String createFile(String fileName, String fileContent) {
    final html.Blob blob = html.Blob(
        [Uint8List.fromList(utf8.encode(fileContent))], 'application/dart');
    final String url = html.Url.createObjectUrlFromBlob(blob);
    final html.AnchorElement anchor = html.AnchorElement(href: url)
      ..target = 'blank'
      ..download = '$fileName.dart';

    html.document.body!.children.add(anchor);

    anchor.click();

    html.Url.revokeObjectUrl(url);
    return url;
  }

  @override
  void downloadFile(String url, String fileName) {
    final html.AnchorElement anchor = html.AnchorElement(href: url)
      ..target = 'blank'
      ..download = '$fileName.dart';

    html.document.body!.children.add(anchor);

    anchor.click();

    html.Url.revokeObjectUrl(url);
  }
}
