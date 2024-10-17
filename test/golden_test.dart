import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

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

    expect(
      find.text('Hello, world!'),
      matchesGoldenFile('hello_world.png'),
    );
  });
}