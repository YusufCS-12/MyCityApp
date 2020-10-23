import 'package:bingol/Models/category.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import '../constants.dart';
import 'home.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/icons/yanlogo.png',
          color: Colors.white,
          fit: BoxFit.contain,
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
      ),
      body: Home(),
      drawer: buildDrawer(context),
    );
  }
}

Widget buildDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: <Widget>[
        Expanded(
            child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/logo2.png'))),
              child: null,
            ),
            Divider(color: kPrimaryColor, thickness: 1),
            buildDrawerItem(context,
                title: 'Ana Sayfa', targetRoute: '/', data: Icons.home),
            buildDrawerItem(context,
                title: 'Duyurular',
                targetRoute: '/notices',
                data: Icons.announcement),
            buildDrawerItem(context,
                title: 'Haberler',
                targetRoute: '/news',
                data: Icons.library_books),
            buildDrawerItem(context,
                title: 'Nöbetçi Eczaneler',
                targetRoute: '/pharmacies',
                logoPath: 'assets/icons/eczane.png'),
            ExpansionTile(
                leading: Icon(Icons.category),
                title: Text("Kategoriler"),
                trailing: Icon(Icons.arrow_drop_down),
                children: categories
                    .map((e) => buildDrawerItem(context,
                        title: e.title,
                        logoPath: e.logoPath,
                        data: e.iconData,
                        targetRoute: e.targetRoute))
                    .toList()),
            buildDrawerItem(context,
                title: 'Sosyal Medyada Paylaş',
                targetRoute: '/share',
                data: Icons.share),
          ],
        )),
        Container(
          margin: EdgeInsets.all(kDefaultPadding),
          width: double.infinity,
          child: Text.rich(
            TextSpan(children: [
              TextSpan(
                text: " Bingöl Akıllı Kent ",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: ThemeData().canvasColor,
                    backgroundColor: kPrimaryColor),
              ),
              TextSpan(
                  text: " Powered by ",
                  style: TextStyle(
                    fontSize: 12,
                  )),
              TextSpan(
                text: " XX SOFTWARE ",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ]),
          ),
        ),
      ],
    ),
  );
}

Widget buildDrawerItem(BuildContext context,
    {@required String title,
    String logoPath,
    IconData data,
    Color color,
    @required String targetRoute}) {
  return ListTile(
    leading: logoPath == null ? Icon(data) : ImageIcon(AssetImage(logoPath)),
    title: Text(title),
    onTap: () {
      switch (targetRoute) {
        case '/':
          Navigator.pop(context);
          break;
        case '/share':
          {
            Share.share('Bingöl Akıllı Kent Mobil Uygulaması : ' +
                'https://play.google.com/store/apps/details?id=' +
                'com.example.bingol');
            break;
          }
        default:
          Navigator.pushNamed(context, targetRoute);
      }
    },
    dense: true,
  );
}
