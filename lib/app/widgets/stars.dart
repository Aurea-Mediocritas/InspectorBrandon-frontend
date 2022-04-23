import 'package:flutter/material.dart';

import 'package:inspector_brandon_frontend/app/core/const/icons.dart';

class Stars extends StatelessWidget {
  Stars({this.points = 0});
  final int points;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Visibility(
          child: iconStar,
          visible: points > 10 ? true : false,
        ),
        Visibility(
          child: iconStar,
          visible: points > 30 ? true : false,
        ),
        Visibility(
          child: iconStar,
          visible: points > 50 ? true : false,
        ),
        Visibility(
          child: iconStar,
          visible: points > 70 ? true : false,
        ),
        Visibility(
          child: points > 90 ? iconStar : iconHalfStar,
          visible: points > 70 ? true : false,
        ),
      ],
    );
  }
}
