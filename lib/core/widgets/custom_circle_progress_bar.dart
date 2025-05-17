import 'package:fitness_app/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class CircularProgressBar extends StatelessWidget {
  final double percentage;

  const CircularProgressBar({Key? key, required this.percentage})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(shape: BoxShape.circle),
      child: CustomPaint(
        painter: _CircularProgressPainter(percentage),
        child: Container(
          margin: EdgeInsets.all(35),
          decoration: BoxDecoration(color: myWhite, shape: BoxShape.circle),
          child: Center(
            child: Text(
              "${(percentage * 100).toInt()}%",
              textAlign: TextAlign.center,
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(color: myBlack, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}

class _CircularProgressPainter extends CustomPainter {
  final double percentage;

  _CircularProgressPainter(this.percentage);

  @override
  void paint(Canvas canvas, Size size) {
    final strokeWidth = 20.0;
    final radius = (size.width - strokeWidth) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    // Draw background circle (dark)
    final bgPaint =
        Paint()
          ..color = myBlack
          ..strokeWidth = strokeWidth
          ..style = PaintingStyle.stroke;

    canvas.drawCircle(center, radius, bgPaint);

    // Create gradient paint
    final gradient = SweepGradient(
      startAngle: -pi / 2,
      endAngle: 3 * pi / 2,
      stops: [0.0, percentage],
      colors: const [Colors.orange, myOrange],
    );

    final rect = Rect.fromCircle(center: center, radius: radius);

    final progressPaint =
        Paint()
          ..shader = gradient.createShader(rect)
          ..strokeCap = StrokeCap.round
          ..style = PaintingStyle.stroke
          ..strokeWidth = strokeWidth;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      0.36 * pi, // start at top
      2 * pi * percentage,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
