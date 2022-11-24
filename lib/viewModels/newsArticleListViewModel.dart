import 'package:demo1/models/newsArticle.dart';
import 'package:demo1/services/webservice.dart';
import 'package:demo1/viewModels/newsArticleViewModel.dart';
import 'package:flutter/material.dart';

class NewsArticleListViewModel extends ChangeNotifier {
  List<NewsArticleListViewModel> articles = <NewsArticleListViewModel>[];

  NewsArticleListViewModel() {
    _populateTopHeadLines();
  }

  Future<void> _populateTopHeadLines() async {
    List<NewsArticle> newsArticles = await Webservice().fetchTopHeadlines();
    this.articles = newsArticles
        .map((article) => NewsArticleViewModel(article: article))
        .cast<NewsArticleListViewModel>()
        .toList();

    notifyListeners();
  }
}
