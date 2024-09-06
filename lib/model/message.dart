class Message {
  const Message({required this.alias, required this.message});

  final String alias;
  final String message;

  @override
  String toString() {
    return 'Alias: $alias, Message: $message';
  }
}