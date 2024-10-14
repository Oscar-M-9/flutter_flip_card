import 'package:flutter/material.dart';
import 'package:flutter_flip_card/widgets/ticket_container.dart';

class FrontFlipCard extends StatelessWidget {
  const FrontFlipCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const TicketContainer(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 35, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección de Fecha
            Text(
              "FECHA",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "LUN OCT 14 2024",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            // Sección de Hora
            Text(
              "HORA",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "06:00 P. M.",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            // Sección de Usuario
            Text(
              "NOMBRE DE USUARIO",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "FLUTTER",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Colors.black,
              ),
            ),
            Spacer(),
            // Sección inferior con foto de perfil y número
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/media/FKNlhKZUcAEd7FY?format=jpg&name=4096x4096",
                  ),
                  radius: 20,
                ),
                SizedBox(width: 10),
                Text(
                  "Flutter",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 6,
                ),
                Icon(
                  Icons.verified,
                  color: Colors.blue,
                  size: 16,
                ),
                Spacer(),
                Text(
                  "#1992",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
