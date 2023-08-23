import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';

import '/../../models/model.dart';

class BuildListProgresItem extends StatelessWidget {
  const BuildListProgresItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: progressData.length,
        itemBuilder: (contex, index) {
          return SizedBox(
            // color: color1,
            height: 50,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GFProgressBar(
                  percentage: progressData[index].percentage,
                  lineHeight: progressData[index].lineHeight,
                  backgroundColor: progressData[index].bgColor,
                  progressBarColor: progressData[index].progresBarColor,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(
                      '${(progressData[index].percentage * 100).round()} %',
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(progressData[index].label),
              ],
            ),
          );
        },
      ),
    );
  }
}
