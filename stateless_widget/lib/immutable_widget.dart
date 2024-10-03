import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.green, // A shade of green closer to the image
            Color.fromARGB(255, 58, 90, 22), // Darker green
          ],
          center: Alignment.center,
          radius: 1.0,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(90),
          child: Transform.rotate(
            angle: 0.7854, // 45 degrees (π/4 radians)
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20), // Curved edges
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 30,
                    offset: const Offset(10, 10), // Shadow offset for purple container
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: _buildShinyCircle(),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildShinyCircle() {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const RadialGradient(
          colors: [
            Colors.lightBlueAccent,
            Colors.blue,
          ],
          center: Alignment(0, 0), // Center the gradient
          radius: 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 30,
            offset: const Offset(10, 10), // Shadow offset for the circle
          ),
        ],
      ),
    );
  }
}
