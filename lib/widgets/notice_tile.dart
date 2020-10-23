import 'package:bingol/models/notice.dart';
import 'package:bingol/pages/Notices/notice_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NoticeTile extends StatelessWidget {
  Notice notice;
  NoticeTile(this.notice);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5),
      elevation: 10,
      child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => NoticeDetail(notice),
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
                    imageUrl: notice.featuredMediaUrl,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                                value: downloadProgress.progress),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      notice.title.toUpperCase(),
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                  Text(
                    notice.date,
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  )
                ],
              ))),
    );
  }
}
