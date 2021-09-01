import 'package:chat_app_1/presentation/areas/chats_area.dart';
import 'package:chat_app_1/presentation/screens/chats_screen.dart';
import 'package:chat_app_1/presentation/widgets/chats_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {

  const MaterialApp app = MaterialApp(
    home: ChatsScreen(title: 'Messenger',),
  );

  testWidgets('ChatsScreen UI test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(ChatAppBar), findsOneWidget);
    expect(find.byType(ChatsArea), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}
