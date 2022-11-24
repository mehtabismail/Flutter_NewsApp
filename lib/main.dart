import 'package:demo1/screens/newsList.dart';
import 'package:demo1/viewModels/newsArticleViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Fresh News",
        home: ChangeNotifierProvider(
          builder: (context) => NewsArticleViewModel(),
          create: (BuildContext context) {},
          child: NewsList(),
        ));
  }
}
