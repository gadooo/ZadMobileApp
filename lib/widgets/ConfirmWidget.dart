import 'package:flutter/material.dart';

class ConfirmedWidget extends StatelessWidget {
  const ConfirmedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 150, // ممكن تخليه Responsive حسب الحاجة
        height: 150,
        decoration: BoxDecoration(
          color: Colors.green.shade50,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.check,
              color: Colors.green.shade800,
              size: 60,
            ),
            const SizedBox(height: 10),
            Text(
              'Confirmed',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
