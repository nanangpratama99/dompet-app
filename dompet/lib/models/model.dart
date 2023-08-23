import 'package:dompet/constant/constant.dart';
import 'package:flutter/material.dart';

// item class
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

// < ---------------------------------------------------------------- >
// list tile class
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

// < ---------------------------------------------------------------- >
// image class
class Images {
  final String image;
  final double leftValue;
  final double radiusValue1;
  final double radiusValue2;

  Images(
      {required this.image,
      required this.leftValue,
      required this.radiusValue1,
      required this.radiusValue2});
}

// stack circle avatar image
List<Images> imageData = [
  Images(
    image: 'assets/images/1.jpeg',
    leftValue: 0,
    radiusValue1: 34,
    radiusValue2: 0,
  ),
  Images(
    image: 'assets/images/2.jpeg',
    leftValue: 50,
    radiusValue1: 34,
    radiusValue2: 30,
  ),
  Images(
    image: 'assets/images/3.jpeg',
    leftValue: 100,
    radiusValue1: 34,
    radiusValue2: 30,
  ),
  Images(
    image: 'assets/images/4.jpeg',
    leftValue: 150,
    radiusValue1: 34,
    radiusValue2: 30,
  ),
  Images(
    image: 'assets/images/5.jpeg',
    leftValue: 200,
    radiusValue1: 34,
    radiusValue2: 30,
  ),
];

// < ---------------------------------------------------------------- >
// Liner progres bar
class LinearProgresBar {
  final String label;
  final double percentage;
  final double lineHeight;
  final Color bgColor;
  final Color progresBarColor;

  LinearProgresBar({
    required this.label,
    required this.percentage,
    required this.lineHeight,
    required this.bgColor,
    required this.progresBarColor,
  });
}

List<LinearProgresBar> progressData = [
  LinearProgresBar(
    label: 'Inversment',
    percentage: 0.5,
    lineHeight: 20,
    bgColor: Colors.black87.withOpacity(0.1),
    progresBarColor: color2,
  ),
  LinearProgresBar(
    label: 'Restaurant',
    percentage: 0.7,
    lineHeight: 20,
    bgColor: Colors.black87.withOpacity(0.1),
    progresBarColor: color3,
  ),
  LinearProgresBar(
    label: 'Properti',
    percentage: 0.3,
    lineHeight: 20,
    bgColor: Colors.black87.withOpacity(0.1),
    progresBarColor: color4,
  )
];
