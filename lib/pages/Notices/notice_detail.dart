import 'package:bingol/constants.dart';
import 'package:bingol/models/notice.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_matrix_html/flutter_html.dart';

// ignore: must_be_immutable
class NoticeDetail extends StatelessWidget {
  Notice notice;

  NoticeDetail(this.notice);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: kPrimaryColor,
              expandedHeight: 200,
              floating: false,
              pinned: true,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  notice.title,
                  style: TextStyle(shadows: [
                    Shadow(
                      blurRadius: 5.0,
                      color: Colors.black,
                      offset: Offset(1.0, 1.0),
                    ),
                  ]),
                ),
                background: CachedNetworkImage(
                  fit: BoxFit.cover,
                  imageUrl: notice.featuredMediaUrl,
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                  color: kPrimaryColor.withOpacity(0.3),
                  colorBlendMode: BlendMode.multiply,
                ),
              ),
            )
          ];
        },
        body: SingleChildScrollView(
            child: Html(
          useRichText: true,
          padding: EdgeInsets.all(10),
          data: notice.content,
          showImages: true,
        )),
      ),
    );
  }
}
