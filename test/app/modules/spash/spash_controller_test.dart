import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:chat_flutter_firebase/app/modules/spash/spash_controller.dart';
import 'package:chat_flutter_firebase/app/modules/spash/spash_module.dart';

void main() {
  initModule(SpashModule());
  SpashController spash;

  setUp(() {
    spash = SpashModule.to.get<SpashController>();
  });

  group('SpashController Test', () {
    test("First Test", () {
      expect(spash, isInstanceOf<SpashController>());
    });

    test("Set Value", () {
      expect(spash.value, equals(0));
      spash.increment();
      expect(spash.value, equals(1));
    });
  });
}
