const aiChatImageExtensions = {
  '.png',
  '.jpg',
  '.jpeg',
  '.webp',
  '.gif',
};

const aiChatDocumentExtensions = {
  '.txt',
  '.md',
  '.pdf',
  '.doc',
  '.docx',
  '.json',
  '.csv',
  '.xlsx',
  '.xls',
};

const aiChatAttachmentExtensions = {
  ...aiChatDocumentExtensions,
  ...aiChatImageExtensions,
};

const aiChatMaxPendingAttachments = 4;

bool isAiChatImageFileName(String fileName) {
  final name = fileName.trim().toLowerCase();
  if (name.isEmpty) {
    return false;
  }

  return aiChatImageExtensions.any(name.endsWith);
}

bool isAiChatAttachmentFileName(String fileName, {required bool imageUploadEnabled}) {
  final name = fileName.trim().toLowerCase();
  if (name.isEmpty) {
    return false;
  }

  final allowed = imageUploadEnabled ? aiChatAttachmentExtensions : aiChatDocumentExtensions;
  return allowed.any(name.endsWith);
}
