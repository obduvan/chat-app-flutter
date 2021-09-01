class MessageModel {
  MessageModel({required this.messageContent, required this.messageType});

  final String messageContent;
  final MessageType messageType;
}


enum MessageType{
  received,
  sent,
}