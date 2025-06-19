import 'package:dio/dio.dart';

extension ResponseExtension on Response {
  bool get isSuccess => statusCode == 200;
}

extension UrlToStrapiUrl on String {
  String toImageUrl() {
    return 'http://localhost:1337$this';
  }
}
