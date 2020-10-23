import 'package:bingol/models/news.dart';
import 'package:bingol/pages/News/news_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {

  final News news;
  NewsTile(this.news);

  @override
  Widget build(BuildContext context) {
    return  Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      elevation: 10,
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NewsDetail(news),
                ));
          },
          child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CachedNetworkImage(
                    fit: BoxFit.fill,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .25,
                    imageUrl: news.featuredMediaUrl,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                        CircularProgressIndicator(
                            value: downloadProgress.progress),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      news.title.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    news.date,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ))),
    );
  }
}