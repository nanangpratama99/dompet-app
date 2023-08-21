import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constant/constant.dart';
import '../../models/model.dart';

class InvoiceCard extends StatefulWidget {
  const InvoiceCard({
    super.key,
  });

  @override
  State<InvoiceCard> createState() => _InvoiceCardState();
}

class _InvoiceCardState extends State<InvoiceCard> {
  get index => null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: demoData[index].color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    demoData[index].icon,
                    width: 40,
                    color: white,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                demoData[index].title,
                style: const TextStyle(color: white, fontSize: 30),
              ),
              const SizedBox(height: 5),
              Text(
                demoData[index].description,
                style: const TextStyle(color: white2, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
