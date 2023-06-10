import 'package:flutter/material.dart';
import 'package:maze/maze.dart';

class MazeRunnerPage extends StatefulWidget {
  const MazeRunnerPage({super.key});

  @override
  State<MazeRunnerPage> createState() => _MazeRunnerPageState();
}

class _MazeRunnerPageState extends State<MazeRunnerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Maze(
          player: MazeItem(
            'https://image.flaticon.com/icons/png/512/808/808433.png',
            ImageType.network,
          ),
          columns: 6,
          rows: 12,
          wallThickness: 4.0,
          wallColor: Theme.of(context).primaryColor,
          finish: MazeItem(
            'https://image.flaticon.com/icons/png/512/1506/1506339.png',
            ImageType.network,
          ),
          onFinish: () => print('Hi from finish line!'),
        ),
      ),
    );
  }
}
