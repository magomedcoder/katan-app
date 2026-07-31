import 'dart:typed_data';

import 'package:katan/domain/repositories/file_repository.dart';

class UploadTaskFileUseCase {
  const UploadTaskFileUseCase(this._repository);

  final FileRepository _repository;

  Future<void> call({
    required int taskId,
    required String fileName,
    required Uint8List bytes,
  }) => _repository.uploadFile(
    objectType: FileObjectType.task,
    objectId: taskId,
    fileName: fileName,
    bytes: bytes,
  );
}
