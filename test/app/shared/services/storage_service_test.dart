import 'package:flutter_test/flutter_test.dart';

import 'package:chat_flutter_firebase/app/shared/services/storage_service.dart';

void main() {
  StorageService service;

  setUp(() {
    service = StorageService();
  });

  group('StorageService Test', () {
    test("First Test", () {
      expect(service, isInstanceOf<StorageService>());
    });
  });
}
