import 'dart:math';

import 'package:flutter/material.dart';

class TicketPainter extends CustomPainter {
  final Color color;

  TicketPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 2;

    // Semicírculo superior
    canvas.drawArc(
      Rect.fromCircle(center: Offset(size.width / 2, -1), radius: 30),
      0,
      pi,
      false,
      paint,
    );

    // Semicírculo inferior
    canvas.drawArc(
      Rect.fromCircle(
          center: Offset(size.width / 2, size.height + 1), radius: 30),
      pi,
      pi,
      false,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// class TicketPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     // Fondo blanco
//     final paint = Paint()..color = Colors.white;
//     canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);

//     // Semicírculos
//     final semicirculoPaint = Paint()
//       ..color = Colors.transparent
//       ..style = PaintingStyle.fill
//       ..strokeWidth = 2;
//     canvas.drawArc(
//       Rect.fromCircle(center: Offset(size.width / 2, 0), radius: 30),
//       0,
//       pi,
//       false,
//       semicirculoPaint,
//     );
//     canvas.drawArc(
//       Rect.fromCircle(center: Offset(size.width / 2, size.height), radius: 30),
//       pi,
//       pi,
//       false,
//       semicirculoPaint,
//     );
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }
