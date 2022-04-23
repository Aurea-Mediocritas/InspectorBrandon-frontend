import 'package:flutter/material.dart';

class AnimatedScore extends StatelessWidget {
  AnimatedScore({this.points = 0, this.str = ""});
  final int points;
  final String str;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(100),
        //     gradient: LinearGradient(
        //       colors: [
        //         Color(0xffd53232),
        //         Color(0xFFdc6400),
        //         Color(0xFFca9500),
        //         Color(0xFF9cc200),
        //         Color(0xFF12eb20),
        //       ],
        //     ),
        //   ),
        CircleAvatar(
          radius: 75,
          backgroundColor: points > 30
              ? points > 50
                  ? points > 70
                      ? points > 90
                          ? Colors.greenAccent[400] //>90
                          : Colors.yellowAccent[400] //70-90
                      : Colors.amberAccent[400] //50-70
                  : Colors.orangeAccent[400] //30-50
              : Colors.redAccent[400], //30
          child: Text(
            '$points',
            style: TextStyle(
                color: Theme.of(context).colorScheme.onTertiary, fontSize: 25),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
            str,
            style: TextStyle(fontSize: 25),
          ),
        ),
      ],
    );
  }
}
