// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timelinewidget/components/my_timelimeline_tile.dart';

// ...

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: ListView(
          children: [
            //start of the timeline
            MyTimeLineTile(
              isFirst: true,
              isLast: false,
              isPast: true,
              title: "ORDER PLACED",
              subtitle: "Your order has been placed.",
            ),

            //middle of the timeline
            MyTimeLineTile(
              isFirst: false,
              isLast: false,
              isPast: true,
              title: "ORDER SHIPPED",
              subtitle: "Your order has been shipped.",
            ),

            //end timeline
            MyTimeLineTile(
              isFirst: false,
              isLast: true,
              isPast: false,
              title: "ORDER DELIVERED",
              subtitle: "Your order has been delivered.",
            ),
          ],
        ),
      ),
    );
  }
}

// ...
