import 'package:equatable/equatable.dart';

class PagedResult<T> extends Equatable {
  const PagedResult({
    required this.items,
    required this.total,
  });

  final List<T> items;
  final int total;

  bool get hasMore => items.length < total;

  @override
  List<Object?> get props => [items, total];
}
