import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/repositories/file_repository.dart';

class GetTaskFilesUseCase {
  const GetTaskFilesUseCase(this._repository);

  final FileRepository _repository;

  Future<PagedResult<FileAttachment>> call(int taskId) => _repository.getFiles(
    objectType: FileObjectType.task,
    objectId: taskId,
  );
}
