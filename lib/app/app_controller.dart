import 'package:chat_flutter_firebase/app/shared/services/storage_service.dart';
import 'package:mobx/mobx.dart';

part 'app_controller.g.dart';

class AppController = _AppBase with _$AppController;

abstract class _AppBase with Store {
  final StorageService storage;

  @observable
  String uid;

  _AppBase(this.storage);

  @action
  getUid() async {
    uid = await storage.getUid();
  }
}
