import 'dart:convert';
import 'dart:io';

typedef JsonParser<T> = T Function(dynamic);

extension JsonDecode on HttpClientResponse {
  Future<T> toJson<T>(JsonParser<T> parser) async {
    final jsonSource = await asBroadcastStream().transform(utf8.decoder).join();
    final json = jsonDecode(jsonSource);
    return parser(json);
  }
}