import 'package:bingol/models/news.dart';
import 'package:bingol/pages/News/news_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NewsMiniTile extends StatelessWidget {
  News news;
  NewsMiniTile(this.news);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetail(news),
          )),
      title: Text(news.title.toUpperCase()),
      subtitle: Text(
        news.desc,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(news.date),
      leading: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: news.featuredMediaUrl,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
