import 'package:theme_generate/data/repository/file_template/file_template_repository.dart';
import 'package:theme_generate/domain/file_template/file_template_data.dart';

class FileTemplateRepositoryImpl extends FileTemplateRepository {
  FileTemplateRepositoryImpl({required FileTemplateData fileTemplateData})
      : _fileTemplateData = fileTemplateData;
  final FileTemplateData _fileTemplateData;

  @override
  String createBlob(String fileName, String fileContent) {
    final url = _fileTemplateData.createFile(fileName, fileContent);
    return url;
  }

  @override
  void downloadFile(String url, String fileName) {
    _fileTemplateData.downloadFile(url, fileName);
  }
}
