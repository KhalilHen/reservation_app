import 'package:flutter/material.dart';

class TablePainter extends CustomPainter {
  final List<Rect> tables; // List of tables
  final List<int> bookedTables; // List of booked table indexes

  TablePainter({required this.tables, required this.bookedTables});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint tablePaint = Paint()..color = Colors.brown; // Table color
    final Paint bookedPaint = Paint()..color = Colors.red; // Booked table color
    final Paint chairPaint = Paint()..color = Colors.blue; // Chair color

    for (int i = 0; i < tables.length; i++) {
      final rect = tables[i];
      final isBooked = bookedTables.contains(i);

      // Draw Table
      canvas.drawRect(rect, isBooked ? bookedPaint : tablePaint);

      // Draw Chairs (Simple Circles Around Table)
      double chairRadius = 10;
      Offset top = Offset(rect.center.dx, rect.top - chairRadius - 5);
      Offset bottom = Offset(rect.center.dx, rect.bottom + chairRadius + 5);
      Offset left = Offset(rect.left - chairRadius - 5, rect.center.dy);
      Offset right = Offset(rect.right + chairRadius + 5, rect.center.dy);

      canvas.drawCircle(top, chairRadius, chairPaint);
      canvas.drawCircle(bottom, chairRadius, chairPaint);
      canvas.drawCircle(left, chairRadius, chairPaint);
      canvas.drawCircle(right, chairRadius, chairPaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
