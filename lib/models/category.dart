import 'package:flutter/cupertino.dart';

class Category {
  final String id;
  final String title;
  final String logoPath;
  final IconData iconData;
  final String targetRoute;
  final Color color;

  Category(this.id, this.title, this.targetRoute, {this.logoPath, this.iconData, this.color});
}

List<Category> categories = [
  Category("1", "Kültür", '/kultur', logoPath: 'assets/icons/kültür.png'),
  Category("2", "Turizm", '/turizm', logoPath: 'assets/icons/turizm.png'),
  Category("3", "Sanat", '/sanat', logoPath: 'assets/icons/sanat.png'),
  Category("4", "Ab-ı Hayat", '/hayat', logoPath: 'assets/icons/abıhayat.png'),
  Category("5", "Gastronomi", '/gastronomi', logoPath: 'assets/icons/gastronomi.png'),
  Category("6", "Sağlık", '/saglik', logoPath: 'assets/icons/saglık.png'),
];