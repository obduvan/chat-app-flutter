import 'package:chat_app_1/main.dart';
import 'package:chat_app_1/presentation/screens/chats_screen.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  testWidgets('Main UI test', (WidgetTester tester) async {
      await tester.pumpWidget(Messenger());

      expect(find.byType(ChatsScreen), findsOneWidget);
  });
}