class ModelChatCard {
  final String name, image, time, lastMessage;
  final bool isActive;

  ModelChatCard(
      {this.name = '',
      this.lastMessage = '',
      this.image = '',
      this.time = '',
      this.isActive = false,
      });
}
