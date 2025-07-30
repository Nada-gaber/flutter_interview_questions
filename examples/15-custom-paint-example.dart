import 'package:flutter/material.dart';

    class MyPainter extends CustomPainter {
      @override
      void paint(Canvas canvas, Size size) {
        final paint = Paint()..color = Colors.blue;
        canvas.drawCircle(Offset(size.width / 2, size.height / 2), 50, paint);
      }

      @override
      bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
    }

    class CustomPaintWidget extends StatelessWidget {
      @override
      Widget build(BuildContext context) {
        return CustomPaint(painter: MyPainter());
      }
    }