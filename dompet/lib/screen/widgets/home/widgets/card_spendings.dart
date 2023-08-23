import 'package:dompet/screen/widgets/home/widgets/head_spend_title.dart';
import 'package:dompet/screen/widgets/home/widgets/spend_button.dart';
import 'package:dompet/screen/widgets/list_progres_item.dart';
import 'package:flutter/material.dart';

import '../../../../constant/constant.dart';

class BuildSpendingsCard extends StatefulWidget {
  const BuildSpendingsCard({
    super.key,
  });

  @override
  State<BuildSpendingsCard> createState() => _BuildSpendingsCardState();
}

class _BuildSpendingsCardState extends State<BuildSpendingsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [myBoxShadow],
      ),
      child: const Column(
        children: [
          BuildHeadTitle(),
          SizedBox(height: 30),
          BuildListProgresItem(),
          SizedBox(height: 20),
          BuildSpendingButton(),
        ],
      ),
    );
  }
}
