import 'package:fctimer/home/time_frame_model.dart';
import 'package:flutter/material.dart';

class TimeFrameItem extends StatelessWidget {
  final int index;
  final TimeFrameModel timeFrame;

  const TimeFrameItem({super.key, required this.index, required this.timeFrame});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.primaries[index % Colors.primaries.length].shade900,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: Column(
          children: [
            Text(
              timeFrame.title,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              "${timeFrame.startTime} - ${timeFrame.endTime}",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
