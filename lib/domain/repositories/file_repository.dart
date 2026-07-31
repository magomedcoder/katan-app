import 'dart:typed_data';

import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/paged_result.dart';

enum FileObjectType { task, taskComment }

abstract class FileRepository {
  Future<PagedResult<FileAttachment>> getFiles({
    required FileObjectType objectType,
    required int objectId,
    int page = 1,
    int limit = 50,
  });

  Future<void> uploadFile({
    required FileObjectType objectType,
    required int objectId,
    required String fileName,
    required Uint8List bytes,
  });

  Future<void> deleteFile({
    required FileObjectType objectType,
    required int attachmentId,
  });

  String downloadUrl(String fileUrl);

  String viewUrl(String fileUrl);
}
