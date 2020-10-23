import 'package:bingol/Models/category.dart';
import 'package:bingol/constants.dart';
import 'package:bingol/data/services/currency_service.dart';
import 'package:bingol/models/currency.dart';
import 'package:bingol/models/news.dart';
import 'package:bingol/models/notice.dart';
import 'package:bingol/pages/News/all_news.dart';
import 'package:bingol/widgets/news_mini_tile.dart';
import 'package:bingol/widgets/notice_mini_tile.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Notices/all_notices.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          buildCarousel(context),
          buildCurrencies(context),
          buildNews(context),
          buildNotices(context),
        ],
      ),
    );
  }

  Widget buildNews(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: kPrimaryColor,
            child: Text('HABERLER',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 26))),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: newsList.length < 3 ? newsList.length : 3,
          itemBuilder: (context, index) {
            return NewsMiniTile(newsList[index]);
          },
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: OutlineButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllNews(),
                  )),
              child: Text('Daha Fazlası'),
              textColor: kPrimaryColor,
              color: kPrimaryColor,
              borderSide: BorderSide(color: kPrimaryColor, width: 1),
            ))
      ],
    );
  }

  Widget buildNotices(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
            padding: EdgeInsets.all(10),
            width: double.infinity,
            color: kPrimaryColor,
            child: Text('DUYURULAR',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 26))),
        ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: noticeList.length < 3 ? noticeList.length : 3,
          itemBuilder: (context, index) {
            return NoticeMiniTile(noticeList[index]);
          },
          separatorBuilder: (context, index) => Divider(
            color: Colors.black,
          ),
        ),
        Padding(
            padding: EdgeInsets.all(10),
            child: OutlineButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AllNotices(),
                  )),
              child: Text('Daha Fazlası'),
              textColor: kPrimaryColor,
              color: kPrimaryColor,
              borderSide: BorderSide(color: kPrimaryColor, width: 1),
            ))
      ],
    );
  }

  Widget buildCarousel(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * .3,
        width: MediaQuery.of(context).size.width,
        child: Carousel(
          animationCurve: Curves.easeInOut,
          images: [
            Image.asset(
              'assets/icons/foto5.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/icons/foto4.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/icons/foto3.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/icons/foto2.png',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'assets/icons/foto1.png',
              fit: BoxFit.cover,
            ),
          ],
          dotIncreaseSize: 2,
          dotSize: 5,
          showIndicator: true,
          borderRadius: true,
          dotColor: Colors.black,
          dotBgColor: Colors.white.withOpacity(.2),
          boxFit: BoxFit.cover,
          autoplay: true,
          autoplayDuration: Duration(milliseconds: 7000),
        ));
  }

  Widget categoryCard(BuildContext context, Category category, int index) {
    return Card(
      margin: EdgeInsets.all(1),
      child: InkWell(
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ImageIcon(
                AssetImage(category.logoPath),
                color: kPrimaryColor,
              ),
              Text(
                category.title.toUpperCase(),
                style: TextStyle(
                    color: kPrimaryColor, fontWeight: FontWeight.bold),
              )
            ],
          )),
    );
  }

  Widget buildCurrencies(BuildContext context) {
    return FutureBuilder(
      future: CurrencyService.getCurrency(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else {
          final List<Currency> currencies = snapshot.data;
          return !snapshot.hasData
              ? SizedBox()
              : SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(mainAxisSize: MainAxisSize.max,
                      children: currencies.map((e) => buildCurrenyItem(e)).toList()),
                );
        }
      },
    );
  }
}

Widget buildCurrenyItem(Currency currency) {
  return Card(
      margin: EdgeInsets.all(5),
      elevation: 5,
      child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(currency.title.toUpperCase(),
                  style: TextStyle(color: Colors.blueGrey)),
              Text(
                currency.selling,
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          )));
}
