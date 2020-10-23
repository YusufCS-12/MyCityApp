import 'package:bingol/constants.dart';
import 'package:bingol/models/pharmacy.dart';
import 'package:flutter/material.dart';

class Pharmacies extends StatefulWidget {
  @override
  _PharmaciesState createState() => _PharmaciesState();
}

class _PharmaciesState extends State<Pharmacies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Nöbetçi Eczaneler'),
          backgroundColor: kPrimaryColor,
        ),
        body: ListView.builder(
            itemBuilder: (context, index) => pharmacyListItem(context, index),
            itemCount: pharmacyList.length));
  }

  Widget pharmacyListItem(BuildContext context, int index) {
    return Card(
        elevation: 5,
        child: Column(
          children: [
            ListTile(
              dense: true,
              leading: CircleAvatar(
                backgroundColor:
                    Colors.primaries[index % Colors.primaries.length],
                child: ImageIcon(
                  AssetImage('assets/icons/eczane.png'),
                  color: Colors.white,
                ),
              ),
              title: Text(pharmacyList[index].name),
              subtitle: Text(pharmacyList[index].date),
              trailing: Text(pharmacyList[index].day),
            ),
            ListTile(
              dense: true,
              leading: Icon(Icons.location_on),
              title: Text(pharmacyList[index].address),
            ),
            ListTile(
              dense: true,
              leading: Icon(Icons.phone),
              title: Text(pharmacyList[index].tel),
            )
          ],
        ));
  }
}
