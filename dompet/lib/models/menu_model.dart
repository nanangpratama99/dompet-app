import 'package:flutter/material.dart';

class MenuModel {
  final IconData icon, iconMore;
  // ignore: non_constant_identifier_names
  final String menuTitle;

  bool isActive;

  MenuModel({
    required this.icon,
    required this.iconMore,
    required this.menuTitle,
    required this.isActive,
  });
}

List<MenuModel> menuData = [
  MenuModel(
    icon: Icons.home,
    iconMore: Icons.arrow_forward_ios_rounded,
    menuTitle: 'Home',
    isActive: false,
  ),
  MenuModel(
    icon: Icons.insights,
    iconMore: Icons.arrow_forward_ios_rounded,
    menuTitle: 'Graph',
    isActive: false,
  ),
  MenuModel(
      icon: Icons.settings,
      iconMore: Icons.arrow_forward_ios_rounded,
      menuTitle: 'Setting',
      isActive: false),
];
