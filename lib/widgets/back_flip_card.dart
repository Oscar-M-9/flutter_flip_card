import 'package:flutter/material.dart';
import 'package:flutter_flip_card/widgets/ticket_container.dart';

class BackFlipCard extends StatelessWidget {
  const BackFlipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const TicketContainer(
      child: Center(
        child: FlutterLogo(
          size: 100,
          style: FlutterLogoStyle.markOnly,
        ),
      ),
    );
  }
}
