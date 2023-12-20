import 'package:theme_generate/data/repository/file_template/file_template_repository.dart';

class DownloadFileUseCase {
  const DownloadFileUseCase(
      {required FileTemplateRepository fileTemplateRepository})
      : _fileTemplateRepository = fileTemplateRepository;
  final FileTemplateRepository _fileTemplateRepository;

  void execute(String url, String fileName) {
    return _fileTemplateRepository.downloadFile(url, fileName);
  }
}
