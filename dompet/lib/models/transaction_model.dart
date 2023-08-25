import 'package:dompet/constant/constant.dart';
import 'package:flutter/material.dart';

class TransactionModel {
  final String text1;
  final String text2;
  final String svgIcon;
  final Color color;

  final String date;
  final String time;

  TransactionModel(
      {required this.text1,
      required this.text2,
      required this.svgIcon,
      required this.color,
      required this.date,
      required this.time});
}

List<TransactionModel> transactionItemData = [
  TransactionModel(
    text1: 'Cindi',
    text2: 'Cashback',
    svgIcon: 'assets/svg/shape-oval.svg',
    color: color1,
    date: 'June 4, 2020',
    time: '05:34:35',
  ),
  TransactionModel(
    text1: 'Adi',
    text2: 'Cashback',
    svgIcon: 'assets/svg/shape-oval.svg',
    color: color2,
    date: 'June 5, 2021',
    time: '07:34:35',
  ),
  TransactionModel(
    text1: 'Fani',
    text2: 'Cashback',
    svgIcon: 'assets/svg/shape-oval.svg',
    color: color3,
    date: 'June 4, 2023',
    time: '08:34:35',
  ),
  TransactionModel(
    text1: 'Reni',
    text2: 'Cashback',
    svgIcon: 'assets/svg/shape-oval.svg',
    color: color4,
    date: 'June 4, 2023',
    time: '08:34:35',
  ),
  TransactionModel(
    text1: 'Rena',
    text2: 'Cashback',
    svgIcon: 'assets/svg/shape-oval.svg',
    color: color5,
    date: 'June 4, 2023',
    time: '08:34:35',
  )
];
