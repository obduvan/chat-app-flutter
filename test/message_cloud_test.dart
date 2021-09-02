import 'package:chat_app_1/domain/models/model_message.dart';
import 'package:chat_app_1/presentation/widgets/message_cloud.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  MaterialApp app = MaterialApp(
    home: Scaffold(
      body: MessageCloud(
        messageModel:
            MessageModel(messageContent: 'hi!', messageType: MessageType.sent),
      ),
    ),
  );

  testWidgets('CloudMessage UI test', (WidgetTester tester) async {
    await tester.pumpWidget(app);

    expect(find.byType(Text), findsOneWidget);
    expect(find.byType(Container), findsNWidgets(2));
  });
}
