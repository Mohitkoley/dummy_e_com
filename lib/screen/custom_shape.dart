import 'dart:ui' as ui;

import 'package:flutter/material.dart';

Widget customP(double width) {
  return CustomPaint(
    size: Size(
        width,
        (width * 0.625)
            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: BlackDesign(),
  );
}

class BlackDesign extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 5, 6, 6)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0049000, size.height * 0.9883077);
    path0.lineTo(size.width * 0.0039222, size.height * 0.6937692);
    path0.quadraticBezierTo(size.width * 0.0022778, size.height * 0.6133462,
        size.width * 0.0249000, size.height * 0.6160000);
    path0.quadraticBezierTo(size.width * 0.0475333, size.height * 0.6153077,
        size.width * 0.1596333, size.height * 0.6104615);
    path0.lineTo(size.width * 0.2631222, size.height * 0.6071538);
    path0.quadraticBezierTo(size.width * 0.2900556, size.height * 0.6040769,
        size.width * 0.2990667, size.height * 0.6029615);
    path0.cubicTo(
        size.width * 0.3124444,
        size.height * 0.5844231,
        size.width * 0.3182111,
        size.height * 0.5622308,
        size.width * 0.3190889,
        size.height * 0.4944615);
    path0.quadraticBezierTo(size.width * 0.3196222, size.height * 0.4532308,
        size.width * 0.3212000, size.height * 0.3301923);
    path0.quadraticBezierTo(size.width * 0.3212000, size.height * 0.2241923,
        size.width * 0.3212000, size.height * 0.1886538);
    path0.quadraticBezierTo(size.width * 0.3189667, size.height * 0.0432692,
        size.width * 0.3624889, size.height * 0.0546154);
    path0.lineTo(size.width * 0.5237778, size.height * 0.0545385);
    path0.quadraticBezierTo(size.width * 0.8885444, size.height * 0.0663846,
        size.width * 0.9550000, size.height * 0.0635385);
    path0.cubicTo(
        size.width * 0.9839556,
        size.height * 0.0593077,
        size.width * 0.9683222,
        size.height * 0.1854615,
        size.width * 0.9745778,
        size.height * 0.2220000);
    path0.cubicTo(
        size.width * 0.9745778,
        size.height * 0.3209615,
        size.width * 0.9745333,
        size.height * 0.5303462,
        size.width * 0.9741556,
        size.height * 0.6318077);
    path0.quadraticBezierTo(size.width * 0.9739778, size.height * 0.7267692,
        size.width * 0.9307222, size.height * 0.7109615);
    path0.lineTo(size.width * 0.5832667, size.height * 0.7057308);
    path0.lineTo(size.width * 0.5832667, size.height * 0.7026538);
    path0.lineTo(size.width * 0.4289778, size.height * 0.7069231);
    path0.quadraticBezierTo(size.width * 0.3885667, size.height * 0.7031538,
        size.width * 0.3751111, size.height * 0.7031538);
    path0.quadraticBezierTo(size.width * 0.3433222, size.height * 0.7031538,
        size.width * 0.3264667, size.height * 0.6224231);
    path0.lineTo(size.width * 0.3279667, size.height * 0.7833846);
    path0.quadraticBezierTo(size.width * 0.3292000, size.height * 0.8615769,
        size.width * 0.3292000, size.height * 0.8876154);
    path0.quadraticBezierTo(size.width * 0.3292333, size.height * 0.9967308,
        size.width * 0.3026556, size.height * 0.9908846);
    path0.lineTo(size.width * 0.0049000, size.height * 0.9883077);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
