import 'package:flutter/material.dart';

class BuildHeadTitle extends StatefulWidget {
  final String headTitle;
  final String labelTitle;

  const BuildHeadTitle({
    super.key,
    required this.headTitle,
    required this.labelTitle,
  });

  @override
  State<BuildHeadTitle> createState() => _BuildHeadTitleState();
}

class _BuildHeadTitleState extends State<BuildHeadTitle> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.headTitle,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(widget.labelTitle),
          ],
        ),
        Icon(Icons.more_vert_outlined)
      ],
    );
  }
}
