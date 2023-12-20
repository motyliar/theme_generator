abstract class FileTemplateRepository {
  String createBlob(String fileName, String fileContent);
  void downloadFile(String fileUrl, String fileName);
}
