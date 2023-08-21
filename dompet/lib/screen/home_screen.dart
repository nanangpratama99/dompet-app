import 'package:dompet/models/model.dart';
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
        title: Row(
          children: [
            SvgPicture.asset(
              "assets/svg/wallet-money.svg",
              color: color3,
              width: 50,
            ),
            const SizedBox(width: 10),
            SvgPicture.asset(
              "assets/svg/burger-menu.svg",
              width: 50,
            ),
          ],
        ),
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
      body: Container(
        child: Column(
          children: [
            Container(
              height: 50,
              width: 100,
              color: Colors.amber,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: demoData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
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
                              style:
                                  const TextStyle(color: white, fontSize: 30),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              demoData[index].description,
                              style:
                                  const TextStyle(color: white2, fontSize: 15),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
