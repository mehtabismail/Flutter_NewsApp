import 'package:demo1/viewModels/newsArticleListViewModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<NewsArticleListViewModel>(context);

    print(vm);

    return Scaffold(
      appBar: AppBar(title: Text("Latest News")),
      body: ListView.builder(
        itemCount: vm.articles.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Hello"),
          );
        },
      ),
    );
  }
}
