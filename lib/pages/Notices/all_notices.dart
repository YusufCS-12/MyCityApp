import 'package:bingol/constants.dart';
import 'package:bingol/models/notice.dart';
import 'package:bingol/widgets/notice_tile.dart';
import 'package:flutter/material.dart';

class AllNotices extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TÜM DUYURULAR'),
        backgroundColor: kPrimaryColor,
      ),
      body: ListView.builder(
          itemCount: noticeList.length,
        itemBuilder: (context, index) {
            return NoticeTile(noticeList[index]);
          },
      ),
    );
  }
}