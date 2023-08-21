import 'package:dompet/models/model.dart';
import 'package:dompet/screen/widgets/app_bar.dart';
import 'package:dompet/screen/widgets/card_overview.dart';
import 'package:dompet/screen/widgets/insight.dart';
import 'package:dompet/screen/widgets/invoice_card.dart';
import 'package:dompet/screen/widgets/notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constant/constant.dart';

class HomeScreen extends StatelessWidget {
  final List<double> insightData = [0.4, 0.7, 0.5, 0.9, 0.4]; // Sample data

  HomeScreen({super.key});

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
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2), // Shadow color
                    spreadRadius: 5, // Spread radius
                    blurRadius: 7, // Blur radius
                    offset:
                        const Offset(0, 3), // Offset in the x and y direction
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Text("Activity", style: TextStyle(fontSize: 20)),
                      const Spacer(),
                      const Text("Income", style: TextStyle(fontSize: 18)),
                      const SizedBox(width: 10),
                      _buildDot(Colors.green),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    children: [
                      const Text("\$49384", style: TextStyle(fontSize: 20)),
                      const Spacer(),
                      const Text("Outcome", style: TextStyle(fontSize: 18)),
                      const SizedBox(width: 10),
                      _buildDot(Colors.redAccent),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            _buildCountInsight('80'),
                            _buildCountInsight('60'),
                            _buildCountInsight('40'),
                            _buildCountInsight('30'),
                            _buildCountInsight('0'),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            InsightGraph(
                              dataPoints: insightData,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildCountInsight('Text'),
                      _buildCountInsight('Text'),
                      _buildCountInsight('Text'),
                      _buildCountInsight('Text'),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildCountInsight(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Text(text),
    );
  }

  Container _buildDot(Color color) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
