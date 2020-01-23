import 'package:chat_flutter_firebase/app/modules/spash/spash_module.dart';
import 'package:chat_flutter_firebase/app/shared/repositories/firestore_repository.dart';
import 'package:chat_flutter_firebase/app/shared/services/storage_service.dart';
import 'package:chat_flutter_firebase/app/app_controller.dart';
import 'package:chat_flutter_firebase/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:chat_flutter_firebase/app/app_widget.dart';
import 'package:chat_flutter_firebase/app/modules/home/home_module.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => FirestoreRepository()),
        Bind((i) => StorageService(i.get<FlutterSecureStorage>())),
        Bind((i) => AppController(i.get<StorageService>())),
        Bind((i) => FlutterSecureStorage())
      ];

  @override
  List<Router> get routers => [
        Router('/', module: SpashModule()),
        Router('login', module: LoginModule()),
        Router('home', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
