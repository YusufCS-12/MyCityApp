import 'package:bingol/models/notice.dart';
import 'package:bingol/pages/Notices/notice_detail.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NoticeMiniTile extends StatelessWidget {
  Notice notice;

  NoticeMiniTile(this.notice);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NoticeDetail(notice),
          )),
      title: Text(notice.title.toUpperCase()),
      subtitle: Text(
        notice.desc,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(notice.date),
      leading: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: notice.featuredMediaUrl,
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => Icon(Icons.error),
      ),
    );
  }
}
