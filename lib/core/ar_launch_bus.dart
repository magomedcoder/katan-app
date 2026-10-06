import 'package:katan/domain/entities/ar_object.dart';

class ArLaunchBus {
  ArObjectRef? pending;

  void open(ArObjectRef ref) {
    pending = ref;
  }

  ArObjectRef? take() {
    final ref = pending;
    pending = null;
    return ref;
  }
}
