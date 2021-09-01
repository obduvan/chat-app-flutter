import 'package:chat_app_1/data/examples/example_chat_cards.dart';
import 'package:chat_app_1/domain/models/model_chat_card.dart';
import 'package:chat_app_1/presentation/widgets/chat_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/constants.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  var chatCard = ChatCard(
    modelChatCard: ModelChatCard(
      name: 'Mickey',
      lastMessage: 'hi',
      image: '',
      time: '3m ago',
      isActive: false,
    ),
  );

  MaterialApp app = MaterialApp(home: Scaffold(body: chatCard));

  testWidgets('Counter chatCard UI test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(Row), findsOneWidget);
    expect(find.byType(Column), findsOneWidget);
    expect(find.byType(Text), findsNWidgets(3));
    expect(find.byType(InkWell), findsOneWidget);
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
