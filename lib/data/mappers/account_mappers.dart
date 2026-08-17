import 'package:katan/data/mappers/entity_mappers.dart';
import 'package:katan/domain/entities/app_notification.dart';
import 'package:katan/generated/pb/account.pb.dart' as pb;

AppNotification mapAppNotification(pb.Notification item) {
  final taskId = item.taskId.toInt();
  return AppNotification(
    id: item.id.toInt(),
    name: item.name,
    description: item.description,
    type: item.type,
    taskId: taskId > 0 ? taskId : null,
    createdAt: mapUnix(item.createdAt),
    read: item.read,
  );
}

AppNotificationsPage mapAppNotificationsPage(pb.GetNotificationsResponse response) {
  return AppNotificationsPage(
    items: response.items.map(mapAppNotification).toList(),
    unreadCount: response.unreadCount.toInt(),
  );
}
