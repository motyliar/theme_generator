import 'package:theme_generate/data/repository/file_template/file_template_repository.dart';

class CreateFile {
  const CreateFile({required FileTemplateRepository fileTemplateRepository})
      : _fileTemplateRepository = fileTemplateRepository;
  final FileTemplateRepository _fileTemplateRepository;

  String execute(String fileName, String fileContent) {
    return _fileTemplateRepository.createBlob(fileName, fileContent);
  }
}
