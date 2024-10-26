import 'package:flutter/material.dart';

class ImmutableWidget extends StatelessWidget {
  const ImmutableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [
            Colors.green,
            Color.fromARGB(255, 58, 90, 22),
          ],
          center: Alignment.center,
          radius: 1.0,
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(90),
          child: Transform.rotate(
            angle: 0.7854, //
            child: Container(
              decoration: BoxDecoration(
                color: Colors.purple,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 30,
                    offset: const Offset(10, 10),
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
          center: Alignment(0, 0),
          radius: 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 10,
            blurRadius: 30,
            offset: const Offset(10, 10),
          ),
        ],
      ),
    );
  }
}