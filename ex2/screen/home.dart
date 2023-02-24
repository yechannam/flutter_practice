import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSec = 3;
  bool running = false;
  int totalPomo = 0;
  late Timer timer;

  void onTick(Timer timer) {
    setState(() {
      if (totalSec == 0) {
        totalPomo = totalPomo + 1;
        totalSec = 1500;
        running = false;
        timer.cancel();
      }
      running ? totalSec = totalSec - 1 : timer.cancel();
    });
  }

  void onStartPless() {
    running = !running;
    timer = Timer.periodic(const Duration(seconds: 1), onTick);
  }

  String format(int sec) {
    var duratino = Duration(seconds: sec);
    String min;
    String secc;

    min = duratino.toString().split('.')[0].split(':')[1];
    secc = duratino.toString().split('.')[0].split(':')[2];
    return '$min:$secc';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                format(totalSec),
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 99,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Center(
              child: IconButton(
                color: Theme.of(context).cardColor,
                iconSize: 120,
                onPressed: onStartPless,
                icon: Icon(running ? Icons.pause : Icons.play_arrow_sharp),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Theme.of(context).cardColor,
                        borderRadius: BorderRadius.circular(45)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pomodoros',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                        Text(
                          '$totalPomo',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.w600,
                            color:
                                Theme.of(context).textTheme.displayLarge!.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
