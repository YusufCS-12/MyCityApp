import 'package:bingol/constants.dart';
import 'package:bingol/models/news.dart';
import 'package:bingol/widgets/news_tile.dart';
import 'package:flutter/material.dart';

class AllNews extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TÜM HABERLER'),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return NewsTile(newsList[index]);
          },
          itemCount: newsList.length),
    );
  }
}