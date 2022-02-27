import 'package:flutter/material.dart';

class Paper extends StatelessWidget {
  const Paper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomPaint(
        painter: PaperPainter(),
      ),
    );
  }
}

class PaperPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint();
    //draw circle
   // canvas.drawCircle(const Offset(100, 100), 10, paint);

    //custom paint
    paint
      ..color = Colors.blue // color blue
      ..strokeWidth = 4 // stroke width is 4
      ..style = PaintingStyle.stroke; // style is stroke
    canvas.drawLine(const Offset(0, 0), const Offset(100, 100), paint);
    Path path = Path();
    path.moveTo(100, 100);
    path.lineTo(200, 0);
    canvas.drawPath(path, paint..color = Colors.red);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
