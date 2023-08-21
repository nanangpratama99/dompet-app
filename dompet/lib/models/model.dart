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
