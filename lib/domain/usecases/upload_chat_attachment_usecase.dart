import 'package:katan/domain/entities/chat.dart';
import 'package:katan/domain/repositories/chat_repository.dart';

class UploadChatAttachmentUseCase {
  const UploadChatAttachmentUseCase(this._repository);

  final ChatRepository _repository;

  Future<ChatAttachment> call({
    required int messageId,
    required String filename,
    required String mimeType,
    required List<int> bytes,
  }) => _repository.uploadMessageAttachment(
    messageId: messageId,
    filename: filename,
    mimeType: mimeType,
    bytes: bytes,
  );
}
