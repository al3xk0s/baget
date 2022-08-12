import 'dart:io';

import 'package:baget/json_extention.dart';

abstract class APIProvider {
  Future<T> get<T>(Uri uri, JsonParser<T> parser);
}

class APIProviderImpl implements APIProvider {
  final HttpClient _client = HttpClient();

  @override
  Future<T> get<T>(Uri uri, JsonParser<T> parser) async {
    final request = await _client.getUrl(uri);
    final response = await request.close();
    return await response.toJson(parser);
  }

}