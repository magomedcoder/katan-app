import 'package:katan/domain/repositories/file_repository.dart';

class DeleteTaskFileUseCase {
  const DeleteTaskFileUseCase(this._repository);

  final FileRepository _repository;

  Future<void> call(int attachmentId) => _repository.deleteFile(
    objectType: FileObjectType.task,
    attachmentId: attachmentId,
  );
}
