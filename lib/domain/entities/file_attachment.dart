import 'package:equatable/equatable.dart';
import 'package:katan/domain/entities/user_ref.dart';

class FileAttachment extends Equatable {
  const FileAttachment({
    required this.id,
    required this.name,
    required this.url,
    required this.user,
    required this.createdAt,
  });

  final int id;
  final String name;
  final String url;
  final UserRef? user;
  final DateTime? createdAt;

  @override
  List<Object?> get props => [id, name, url, user, createdAt];
}
