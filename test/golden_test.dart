import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test/main.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

void main() {
  testWidgets('Hello World golden test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text('Hello, world!'),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    // expect(
    //   find.text('Hello, world!'),
    //   matchesGoldenFile('hello_world.png'),
    // );
  });

  testGoldens('MyHomePage Widget golden test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyHomePage(title: 'Golden Test Example'));

    await screenMatchesGolden(tester, 'my_homepage');
  });
}