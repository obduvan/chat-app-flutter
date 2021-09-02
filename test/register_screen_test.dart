import 'package:chat_app_1/presentation/areas/auth_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main(){
   MaterialApp app = MaterialApp(
    home: Scaffold(
        body:  AuthArea()
    ),
  );
  testWidgets('AuthScreen UI Test', (WidgetTester tester) async {

    await tester.pumpWidget(app);

    expect(find.byType(Column),findsOneWidget);
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.byType(MaterialButton),findsOneWidget);
  });
}