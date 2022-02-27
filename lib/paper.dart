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
    drawStrokeMiterLimit(canvas);
  }

  void drawIsAntiAliasColor(Canvas canvas) {
    final Paint paint = Paint();
    // isAntiAlias is true
    canvas.drawCircle(
      const Offset(180, 180),
      170,
      paint
        ..color = Colors.blue
        ..strokeWidth = 5,
    );

    canvas.drawCircle(
      const Offset(180 + 360.0, 180),
      170,
      paint
        ..isAntiAlias = false
        ..color = Colors.red,
    );
  }

  void drawStyleStrokeWidth(Canvas canvas) {
    // stroke width & style
    Paint paint = Paint()..color = Colors.red;
    // if style is stroke half of width of stroke width will outside
    canvas.drawCircle(
      const Offset(180, 180),
      150,
      paint
        ..style = PaintingStyle.stroke
        ..strokeWidth = 50,
    );

    canvas.drawCircle(
      const Offset(180 + 360.0, 180),
      150,
      paint
        ..style = PaintingStyle.fill
        ..strokeWidth = 50,
    );
  }

  void drawStrokeCap(Canvas canvas) {
    Paint paint = Paint();
    paint
      ..style = PaintingStyle.stroke
      ..color = Colors.blue
      ..strokeWidth = 20;

    //normal no any effect
    canvas.drawLine(
      const Offset(50, 50),
      const Offset(50, 150),
      paint..strokeCap = StrokeCap.butt,
    );

    // add rounded to top and bottom
    canvas.drawLine(
      const Offset(50 + 50, 50),
      const Offset(50 + 50, 150),
      paint..strokeCap = StrokeCap.round,
    );

    //add a square to top and bottom
    canvas.drawLine(
      const Offset(50 + 100, 50),
      const Offset(50 + 100, 150),
      paint..strokeCap = StrokeCap.square,
    );
  }

  void drawStrokeJoin(Canvas canvas) {
    //stroke join is suitable for path draw not canvas.drawPoints
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.blue
      ..strokeWidth = 20;
    Path path = Path();
    
    path.moveTo(50, 50);
    path.lineTo(50, 150);
    // path.lineTo(150, 100);
    // path.lineTo(150, 200);
    //path.relativeLineTo(100, -50);
    path.relativeLineTo(100, -50);
    path.relativeLineTo(0, 100);
    canvas.drawPath(path, paint..strokeJoin = StrokeJoin.bevel);

    path.reset();

    path.moveTo(50 + 150, 50);
    path.lineTo(50 + 150, 150);
    // path.lineTo(150, 100);
    // path.lineTo(150, 200);
    //path.relativeLineTo(100, -50);
    path.relativeLineTo(100, -50);
    path.relativeLineTo(0, 100);
    canvas.drawPath(path, paint..strokeJoin = StrokeJoin.miter);

    path.reset();

    path.moveTo(50 + 300, 50);
    path.lineTo(50 + 300, 150);
    // path.lineTo(150, 100);
    // path.lineTo(150, 200);
    //path.relativeLineTo(100, -50);
    path.relativeLineTo(100, -50);
    path.relativeLineTo(0, 100);
    canvas.drawPath(path, paint..strokeJoin = StrokeJoin.round);


  }

  void drawStrokeMiterLimit(Canvas canvas) {
    //default strokeMiterLimit is 4
    Paint paint =  Paint();
    Path path =  Path();
    paint
      ..style = PaintingStyle.stroke
      ..color = Colors.blue
      ..strokeJoin = StrokeJoin.miter
      ..strokeWidth = 20;
    for (int i = 0; i < 4; i++) {
      path.reset();
      path.moveTo(50 + 150.0 * i, 50);
      path.lineTo(50 + 150.0 * i, 150);
      path.relativeLineTo(100, -(40.0 * i + 20));
      canvas.drawPath(path, paint..strokeMiterLimit = 2);
    }
    for (int i = 0; i < 4; i++) {
      path.reset();
      path.moveTo(50 + 150.0 * i, 50 + 150.0);
      path.lineTo(50 + 150.0 * i, 150 + 150.0);
      path.relativeLineTo(100, -(40.0 * i + 20));
      canvas.drawPath(path, paint..strokeMiterLimit = 3);
    }
  }

  //level 3



  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
