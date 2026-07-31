import 'dart:typed_data';

import 'package:katan/data/data_sources/remote/file_remote_datasource.dart';
import 'package:katan/domain/entities/file_attachment.dart';
import 'package:katan/domain/entities/paged_result.dart';
import 'package:katan/domain/repositories/file_repository.dart';

class FileRepositoryImpl implements FileRepository {
  FileRepositoryImpl(this._remote);

  final FileRemoteDataSource _remote;

  @override
  Future<PagedResult<FileAttachment>> getFiles({
    required FileObjectType objectType,
    required int objectId,
    int page = 1,
    int limit = 50,
  }) => _remote.getFiles(
    objectType: objectType,
    objectId: objectId,
    page: page,
    limit: limit,
  );

  @override
  Future<void> uploadFile({
    required FileObjectType objectType,
    required int objectId,
    required String fileName,
    required Uint8List bytes,
  }) => _remote.uploadFile(
    objectType: objectType,
    objectId: objectId,
    fileName: fileName,
    bytes: bytes,
  );

  @override
  Future<void> deleteFile({
    required FileObjectType objectType,
    required int attachmentId,
  }) => _remote.deleteFile(
    objectType: objectType,
    attachmentId: attachmentId,
  );

  @override
  String downloadUrl(String fileUrl) => _remote.downloadUrl(fileUrl);

  @override
  String viewUrl(String fileUrl) => _remote.viewUrl(fileUrl);
}
