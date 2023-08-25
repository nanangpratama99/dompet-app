import 'package:flutter/material.dart';

import '/../../constant/constant.dart';

class DotNotification extends StatelessWidget {
  final String countNotif;
  const DotNotification({super.key, required this.countNotif});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: color3,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(countNotif),
      ),
    );
  }
}
