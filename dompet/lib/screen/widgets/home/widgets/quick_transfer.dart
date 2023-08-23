import 'package:dompet/screen/widgets/home/widgets/custom_circleavatar.dart';
import 'package:flutter/material.dart';

import '/../../constant/constant.dart';

class BuildQuicTransfer extends StatefulWidget {
  final String title;
  const BuildQuicTransfer({
    super.key,
    required this.title,
  });

  @override
  State<BuildQuicTransfer> createState() => _BuildQuicTransferState();
}

class _BuildQuicTransferState extends State<BuildQuicTransfer> {
  int amount = 10000;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
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
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Quic Transfer", style: TextStyle(fontSize: 20)),
              Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ],
          ),
          const SizedBox(height: 10),
          const Text(
            "If the [style] argument is null",
            style: TextStyle(color: Colors.grey),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: color4.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            // backgroundImage: NetworkImage(
                            //     'https://picsum.photos/id/237/200/300'),
                            ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Samuel"),
                            Text("@samuel"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.check,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          const SizedBox(height: 20),
          const BuildCircleAvatar(),
          const SizedBox(height: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "$amount",
                style: const TextStyle(
                  fontSize: 32.0,
                ),
              ),
              Slider(
                label: "Select Amount",
                value: amount.toDouble(),
                onChanged: (value) {
                  setState(() {
                    amount = value.toInt();
                  });
                },
                min: 10000,
                max: 100000,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Your Balance"),
              Text("\$100.000"),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: color3,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15))),
              onPressed: () {},
              child: const Text("Submit"),
            ),
          )
        ],
      ),
    );
  }
}
