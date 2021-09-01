import 'package:chat_app_1/presentation/widgets/chat_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main(){
   MaterialApp app = MaterialApp(
    home: Scaffold(
        body:  ChatInputWidget()
    ),
  );
  testWidgets('InputWidget UI Test', (WidgetTester tester) async {

    await tester.pumpWidget(app);

    expect(find.byType(TextField),findsOneWidget);
    expect(find.byType(FloatingActionButton),findsOneWidget);
    expect(find.byType(Icon),findsOneWidget);
    expect(find.byType(Row),findsOneWidget);

  });
}