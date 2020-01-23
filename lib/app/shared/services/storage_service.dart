import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageService extends Disposable {
  final FlutterSecureStorage storage;

  StorageService(this.storage);

  Future<String> getUid() async {
    String uid = await storage.read(key: "uid");
    return uid;
  }

  Future<void> setUid(String uid) async {
    await storage.write(key: "uid", value: uid);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
