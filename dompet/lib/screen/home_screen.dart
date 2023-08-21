import 'package:dompet/models/model.dart';
import 'package:dompet/screen/widgets/app_bar.dart';
import 'package:dompet/screen/widgets/card_overview.dart';
import 'package:dompet/screen/widgets/invoice_card.dart';
import 'package:dompet/screen/widgets/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const BuildAppBar(),
        actions: [
          Stack(
            children: [
              // icon
              Container(
                margin: const EdgeInsets.only(top: 15, right: 10),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/gift.svg",
                      width: 30,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/svg/bell.svg",
                      width: 30,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 10),
                    SvgPicture.asset(
                      "assets/svg/message.svg",
                      width: 30,
                      color: Colors.black54,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),

              // notif
              const Positioned(
                left: 15,
                bottom: 25,
                child: DotNotification(),
              ),
              const Positioned(
                left: 55,
                bottom: 25,
                child: DotNotification(),
              ),
              const Positioned(
                right: 10,
                bottom: 25,
                child: DotNotification(),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            BuildInvoiceCard(
                context: context,
                color: color1,
                icon: demoData[0].icon,
                title: demoData[0].title,
                description: demoData[0].description),
            BuildInvoiceCard(
                context: context,
                color: color2,
                icon: demoData[1].icon,
                title: demoData[1].title,
                description: demoData[1].description),
            BuildInvoiceCard(
                context: context,
                color: color3,
                icon: demoData[2].icon,
                title: demoData[2].title,
                description: demoData[2].description),
            BuildInvoiceCard(
                context: context,
                color: color4,
                icon: demoData[3].icon,
                title: demoData[3].title,
                description: demoData[3].description),

            // content 2
            const BuildCardOverview(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Activityy"),
                      const Text("data"),
                      const Spacer(),
                      Container(
                        height: 20,
                        width: 20,
                        color: Colors.amber,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
