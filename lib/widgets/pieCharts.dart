import 'dart:math';

import 'package:flutter/material.dart';

import '../data.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: AppColors.neumorpShadow, color: AppColors.primaryWhite),
          child: Stack(
            children: <Widget>[
              CustomPaint(
                child: Container(),
                foregroundPainter: PieChartPainter(),
              ),
              Center(
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: AppColors.neumorpShadow, color: AppColors.primaryWhite),
                ),
              )
            ],
          )),
    );
  }
}

class PieChartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);

    var paint = new Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 50;
    double total = 0;
    AppColors.expenses.forEach((element) {
      total += element('amount');
    });

    var startRadius = -pi / 2;
    for (int i = 0; i < AppColors.expenses.length; i++);
    {
      var i;
      var currentExpense = AppColors.expenses[i];
      var sweepRadian = (currentExpense['amount'] / total) * 2 * pi;
      paint.color = AppColors.pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadius, sweepRadian, false, paint);
      startRadius += sweepRadian;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
