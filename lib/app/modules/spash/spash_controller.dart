import 'package:chat_flutter_firebase/app/shared/services/storage_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'spash_controller.g.dart';

class SpashController = _SpashBase with _$SpashController;

abstract class _SpashBase with Store {
  final StorageService storage;
  @observable
  String uid;

  _SpashBase(this.storage) {
    getUid();
  }

  @action
  getUid() async {
    uid = await storage.getUid().then((value) {
      if (value == null) {
        Modular.to.pushNamed('login');
      } else {
        Modular.to.pushNamed('home');
      }
      return null;
    });
  }
}
