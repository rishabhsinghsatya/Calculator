import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calculator/main.dart';

void main() {
  testWidgets("widget test", (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());
    expect(find.byType(Scaffold), findsOneWidget);
    debugPrint("Scaffold test successful");
  });

  testWidgets("test widget", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.enterText(find.byType(TextField).first, "1");
    expect(find.text("1"), findsOneWidget);
    print("special test");
  });

  testWidgets("for 2nd value", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.enterText(find.byType(TextField).last, "5");
    expect(find.text("5"), findsOneWidget);
    debugPrint("special 2 test");
  });
  testWidgets("button test", (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.enterText(find.byType(TextField).first, "1");
    await tester.enterText(find.byType(TextField).last, "5");
    var onPressed = find.text(add(num, num));
    expect(onPressed, findsOneWidget);
    print('Reverse Text');
    await tester.tap(onPressed);
    await tester.pump();
    expect(find.text("onPressed"), findsOneWidget);
    print('sveD rettulF');
  });

  testWidgets('Calculator App test', (WidgetTester tester) async {
    Widget outputsection = const Padding(padding: EdgeInsets.zero);
    await tester.pumpWidget(Container(child: outputsection));

    expect(find.byWidget(outputsection), findsOneWidget);
    debugPrint("OutputSection widget test Successfully");
    // Widget outputsection;
    // expect(find.byWidget(), findsOneWidget);
  });
  testWidgets('Calculator widget test', (WidgetTester tester) async {
    Widget textfieldsection = const Padding(padding: EdgeInsets.zero);
    await tester.pumpWidget(Container(child: textfieldsection));

    expect(find.byWidget(textfieldsection), findsOneWidget);
    debugPrint("TextfieldSection widget test Successfully");
  });
  testWidgets('Calculator widget test', (WidgetTester tester) async {
    Widget buttonsection = const Padding(padding: EdgeInsets.zero);
    await tester.pumpWidget(Container(child: buttonsection));

    expect(find.byWidget(buttonsection), findsOneWidget);
    debugPrint("ButtonSection widget test Successfully");
  });
}
