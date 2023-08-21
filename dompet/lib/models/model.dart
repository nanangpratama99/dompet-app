import 'package:dompet/constant/constant.dart';
import 'package:flutter/material.dart';

class Items {
  final String title;
  final String icon;
  final String description;
  final Color color;

  Items(
      {required this.title,
      required this.icon,
      required this.description,
      required this.color});
}

class ListTile {
  final String text;
  final String percentage;
  final Color color;

  ListTile({required this.text, required this.percentage, required this.color});
}

// demo data list tile

final List<ListTile> demoListData = [
  ListTile(
    text: 'Account',
    percentage: '20%',
    color: color1,
  ),
  ListTile(
    text: 'Service',
    percentage: '40%',
    color: color2,
  ),
  ListTile(
    text: 'Restourant',
    percentage: '10%',
    color: color3,
  ),
  ListTile(
    text: 'Other',
    percentage: '30%',
    color: color4,
  ),
];

// demo data
final List<Items> demoData = [
  Items(
    title: '9940',
    icon: 'assets/svg/receipt.svg',
    description: 'Total Invoice',
    color: color1,
  ),
  Items(
    title: '6843',
    icon: 'assets/svg/checkmark-outline.svg',
    description: 'Paid Invoice',
    color: color2,
  ),
  Items(
    title: '58333',
    icon: 'assets/svg/xmark-circle-thin.svg',
    description: 'Unpaid Invoice',
    color: color5,
  ),
  Items(
    title: '58333',
    icon: 'assets/svg/bill.svg',
    description: 'Total Invoice Sent',
    color: color4,
  ),
];
