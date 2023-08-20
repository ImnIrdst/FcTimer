import 'package:fctimer/home/time_frame_model.dart';
import 'package:flutter/cupertino.dart';

import 'time_frame_item.dart';

class TimeFramesList extends StatelessWidget {
  final List<TimeFrameModel> timeFrameList;

  const TimeFramesList({
    super.key,
    required int counter,
    required this.timeFrameList,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => TimeFrameItem(
          index: index,
          timeFrame: timeFrameList[index],
        ),
        childCount: timeFrameList.length,
      ),
    );
  }
}
