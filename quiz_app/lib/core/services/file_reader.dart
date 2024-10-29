
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import '../errors/file_read_exception.dart';

class FileReader {
  FileReader._();

  static Future<PlatformFile> pickFileAndRead() async {
    final file = await _pickFile();
    if (file != null) {
      if (file.bytes == null) {
        throw FileReadException('File bytes are null');
      }
      return file;
    } else {
      throw FileReadException('No file selected');
    }
  }

  static Future<PlatformFile?> _pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      withData: true,
      type: FileType.custom,
      allowedExtensions: ['pdf', 'docx', 'doc', 'txt'],
    );
    if (result != null) {
      return result.files.single;
    } else {
      return null;
    }
  }

  static MultipartFile toMultipartFile(PlatformFile file) {
    if (file.bytes == null) {
      throw FileReadException('File bytes are null');
    }
    return MultipartFile.fromBytes(
      file.bytes!,
      filename: file.name,
    );
  }
}
