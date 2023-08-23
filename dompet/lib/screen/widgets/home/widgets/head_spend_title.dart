import 'package:flutter/material.dart';

class BuildHeadTitle extends StatelessWidget {
  const BuildHeadTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Spendings",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text("lorem ipsum dolor set amet consectetur"),
          ],
        ),
        Icon(Icons.more_vert_outlined)
      ],
    );
  }
}
