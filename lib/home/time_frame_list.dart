import 'package:flutter/cupertino.dart';

import 'time_frame_item.dart';

class TimeFramesList extends StatelessWidget {
  const TimeFramesList({
    super.key,
    required int counter,
  }) : _counter = counter;

  final int _counter;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        // padding: const EdgeInsets.symmetric(vertical: 128.0, horizontal: 0.0),
        (context, index) => TimeFrameItem(index: index),
        childCount: _counter,
      ),
    );
  }
}
