class WebsocketMessage {
  WebsocketMessage({required this.type, required this.payload});
  final String type;
  final dynamic payload;

  factory WebsocketMessage.fromJson(Map<String, dynamic> json) {
    return WebsocketMessage(
      type: json['type'] as String,
      payload: json['payload'],
    );
  }
}
