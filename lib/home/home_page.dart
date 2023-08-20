import 'package:fctimer/home/time_frame_model.dart';
import 'package:flutter/material.dart';

import 'time_frame_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 1;

  List<TimeFrameModel> timeFrameList = [
    TimeFrameModel(
      "TODO 1",
      DateTime.now(),
      DateTime.now().add(const Duration(hours: 1)),
    )
  ];

  void _incrementCounter() {
    setState(() {
      _counter++;
      timeFrameList.add(
        TimeFrameModel(
          "TODO $_counter",
          DateTime.now(),
          DateTime.now().add(Duration(hours: _counter)),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("FC Timer"),
            centerTitle: true,
            floating: true,
          ),
          TimeFramesList(counter: _counter, timeFrameList: timeFrameList)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
