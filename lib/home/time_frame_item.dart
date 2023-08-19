import 'package:flutter/material.dart';

class TimeFrameItem extends StatelessWidget {
  final int index;

  const TimeFrameItem({this.index = 0, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.primaries[index % Colors.primaries.length].shade900,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 16),
        child: Text(
          "Item #$index",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
