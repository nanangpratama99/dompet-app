import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constant/constant.dart';

class BuildInvoiceCard extends StatefulWidget {
  const BuildInvoiceCard({
    super.key,
    required this.context,
    required this.color,
    required this.icon,
    required this.title,
    required this.description,
  });

  final BuildContext context;
  final Color color;
  final String icon;
  final String title;
  final String description;

  @override
  State<BuildInvoiceCard> createState() => _BuildInvoiceCardState();
}

class _BuildInvoiceCardState extends State<BuildInvoiceCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 130,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: widget.color,
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
                    widget.icon,
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
                widget.title,
                style: const TextStyle(color: white, fontSize: 30),
              ),
              const SizedBox(height: 5),
              Text(
                widget.description,
                style: const TextStyle(color: white2, fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
