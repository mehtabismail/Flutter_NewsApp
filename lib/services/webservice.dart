import 'dart:convert';

import 'package:demo1/models/newsArticle.dart';
import 'package:http/http.dart' as http;

class Webservice {
  Future<List<NewsArticle>> fetchTopHeadlines() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=aedfa9e1ccce4d61bfc0fd71f528c191";
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["articles"];
      return list.map((article) => NewsArticle.fromJSON(article)).toList();
    } else {
      throw Exception("FAILED TO GET TOP NEWS");
    }
  }
}
