import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:chat_flutter_firebase/app/modules/spash/spash_page.dart';

main() {
  testWidgets('SpashPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SpashPage(title: 'Spash')));
    final titleFinder = find.text('Spash');
    expect(titleFinder, findsOneWidget);
  });
}
