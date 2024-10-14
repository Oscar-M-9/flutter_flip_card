import 'package:flutter/material.dart';
import 'package:flutter_flip_card/widgets/custom_divider.dart';
import 'package:flutter_flip_card/widgets/ticket_painter.dart';

class TicketContainer extends StatelessWidget {
  const TicketContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      height: 400,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: CustomPaint(
              painter: TicketPainter(
                color: Theme.of(context).scaffoldBackgroundColor,
              ),
            ),
          ),
          const Positioned(
            bottom: 88,
            right: 0,
            left: 0,
            child: CustomDivider(),
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}
