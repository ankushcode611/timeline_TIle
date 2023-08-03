// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'event_card.dart';

class MyTimeLineTile extends StatelessWidget {
  final bool isFirst;
  final bool isLast;
  final bool isPast;
  final String title;
  final String subtitle; // Add a parameter for the subtext

  const MyTimeLineTile({
    super.key,
    required this.isFirst,
    required this.isLast,
    required this.isPast,
    required this.title,
    required this.subtitle, // Receive the subtext as a parameter
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: TimelineTile(
        isFirst: isFirst,
        isLast: isLast,

        //decorating the lines
        beforeLineStyle: LineStyle(
            color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100),
        //decorating the node point indicators/icons
        indicatorStyle: IndicatorStyle(
          width: 35,
          color: isPast ? Colors.deepPurple : Colors.deepPurple.shade100,
          iconStyle: IconStyle(
            iconData: Icons.done,
            color: isPast ? Colors.white : Colors.deepPurple.shade100,
          ),
        ),
        //event card
        endChild: EventCard(
          isPast: isPast,
          child: DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'inter',
              fontSize: 16, // Adjust the font size as needed
              fontWeight:
                  FontWeight.normal, // Change to FontWeight.bold for bold text
              // Add more text styles as per your requirements
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18, // You can adjust the main text font size here
                    fontWeight: FontWeight
                        .bold, // You can change the font weight if needed
                  ),
                ),
                SizedBox(
                    height:
                        4), // Add some spacing between the main text and subtext
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14, // You can adjust the main text font size here
                    fontWeight: FontWeight
                        .w400, // You can change the font weight if needed
                  ),
                ), // Display the subtext
              ],
            ),
          ),
        ),
      ),
    );
  }
}
