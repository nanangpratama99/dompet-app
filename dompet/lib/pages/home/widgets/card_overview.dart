import 'package:dompet/models/model.dart';
import 'package:dompet/pages/home/widgets/head_title.dart';
import 'package:flutter/material.dart';

import '/../../constant/constant.dart';

class BuildCardOverview extends StatelessWidget {
  const BuildCardOverview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: const Offset(0, 3), // Offset in the x and y direction
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          mainCard(context),
          const SizedBox(height: 15),
          const BuildHeadTitle(
              headTitle: "Card's Overview",
              labelTitle: 'lorem ipsum dolor set amet'),
          const SizedBox(height: 25),
          SizedBox(
            height: 160, // Set an appropriate height for your use case
            child: ListView.builder(
              itemCount: demoData.length,
              itemBuilder: (BuildContext context, int index) {
                return BuildListTile(index);
              },
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Image.asset("assets/svg/matrix.png"),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget BuildListTile(int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: demoListData[index].color,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          const SizedBox(width: 10),
          Text(demoListData[index].text),
          const Spacer(),
          Text(demoListData[index].percentage),
        ],
      ),
    );
  }

  Container mainCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 170,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: color7,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "\$59303.393",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                "Wallet Ballance",
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          const Spacer(),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                width: 50,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.refresh_outlined,
                      color: Colors.white,
                    ),
                    RotatedBox(
                      quarterTurns: 1,
                      child: RichText(
                        text: const TextSpan(
                          text: 'Change',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
