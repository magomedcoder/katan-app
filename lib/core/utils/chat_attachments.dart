const chatImageExtensions = [
  'png',
  'jpg',
  'jpeg',
  'webp',
  'gif',
  'bmp',
  'svg',
];

const chatVideoExtensions = [
  'mp4',
  'webm',
  'ogg',
  'mov',
  'm4v',
];

const chatDocumentExtensions = [
  'pdf',
  'doc',
  'docx',
  'txt',
  'zip',
  'rar',
  '7z',
  'xlsx',
  'xls',
  'csv',
];

const chatAttachmentExtensions = [
  ...chatImageExtensions,
  ...chatVideoExtensions,
  ...chatDocumentExtensions,
];

const chatUploadChunkSize = 512 * 1024;

String chatAttachmentExtension(String name) {
  final trimmed = name.trim().toLowerCase();
  final dot = trimmed.lastIndexOf('.');
  if (dot < 0 || dot == trimmed.length - 1) {
    return '';
  }

  return trimmed.substring(dot + 1);
}

bool isChatImageAttachment(String name, [String mimeType = '']) {
  if (chatImageExtensions.contains(chatAttachmentExtension(name))) {
    return true;
  }

  return mimeType.startsWith('image/');
}

bool isChatVideoAttachment(String name, [String mimeType = '']) {
  if (chatVideoExtensions.contains(chatAttachmentExtension(name))) {
    return true;
  }

  return mimeType.startsWith('video/');
}

bool isChatAttachmentFile({
  required String name,
  required int size,
}) {
  final normalized = name.trim().toLowerCase();
  if (normalized.isEmpty || size <= 0) {
    return false;
  }

  return chatAttachmentExtensions.any((ext) => normalized.endsWith('.$ext'));
}

String guessMimeType(String name) {
  return switch (chatAttachmentExtension(name)) {
    'png' => 'image/png',
    'jpg' || 'jpeg' => 'image/jpeg',
    'webp' => 'image/webp',
    'gif' => 'image/gif',
    'bmp' => 'image/bmp',
    'svg' => 'image/svg+xml',
    'mp4' => 'video/mp4',
    'webm' => 'video/webm',
    'ogg' => 'video/ogg',
    'mov' => 'video/quicktime',
    'm4v' => 'video/x-m4v',
    'pdf' => 'application/pdf',
    'txt' => 'text/plain',
    'csv' => 'text/csv',
    'zip' => 'application/zip',
    'rar' => 'application/vnd.rar',
    '7z' => 'application/x-7z-compressed',
    'doc' => 'application/msword',
    'docx' => 'application/vnd.openxmlformats-officedocument.wordprocessingml.document',
    'xls' => 'application/vnd.ms-excel',
    'xlsx' => 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    _ => 'application/octet-stream',
  };
}

String formatAttachmentSize(int size) {
  if (size <= 0) {
    return '';
  }

  if (size < 1024) {
    return '$size B';
  }

  if (size < 1024 * 1024) {
    return '${(size / 1024).toStringAsFixed(1)} KB';
  }

  return '${(size / (1024 * 1024)).toStringAsFixed(1)} MB';
}
