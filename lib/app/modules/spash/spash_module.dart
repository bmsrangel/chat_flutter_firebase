import 'package:chat_flutter_firebase/app/modules/spash/spash_controller.dart';
import 'package:chat_flutter_firebase/app/shared/services/storage_service.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:chat_flutter_firebase/app/modules/spash/spash_page.dart';

class SpashModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SpashController(Modular.get<StorageService>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SpashPage()),
      ];

  static Inject get to => Inject<SpashModule>.of();
}
