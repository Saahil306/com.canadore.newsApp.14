// import 'dart:convert';
// import 'package:http/http.dart' as http;
//
// import 'NewsModel.dart';
//
//
// class NewsService {
//   final String apiKey = 'YOUR_API_KEY';
//   final String apiUrl = 'https://newsapi.org/v2/top-headlines?country=us&apiKey=';
//
//   Future<List<Article>> fetchArticles() async {
//     final response = await http.get(Uri.parse(apiUrl + apiKey));
//
//     if (response.statusCode == 200) {
//       List articlesJson = json.decode(response.body)['articles'];
//       return articlesJson.map((json) => Article.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load articles');
//     }
//   }
// }


import 'dart:convert';
import 'package:http/http.dart' as http;

import 'NewsModel.dart';


class NewsService {
  final String apiKey = '7f1ced8acaaa44209ec465a3c9b36ac3';
  final String apiUrl = 'https://newsapi.org/v2/everything?q=Apple&from=2024-05-23&sortBy=popularity&apiKey=';

  Future<NewsModel> fetchArticles() async {
    final response = await http.get(Uri.parse(apiUrl + apiKey));

    if (response.statusCode == 200) {
      return newsModelFromJson(response.body);
    } else {
      throw Exception('Failed to load articles');
    }
  }
}