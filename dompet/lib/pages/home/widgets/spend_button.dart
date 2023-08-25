import 'package:flutter/material.dart';

import '../../../../constant/constant.dart';

class BuildSpendingButton extends StatelessWidget {
  const   BuildSpendingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 17),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: color3),
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: () {},
        child: const Text(
          "View More",
          style: TextStyle(color: color3),
        ),
      ),
    );
  }
}
