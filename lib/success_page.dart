import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle_outline, size: 100, color: Color(0xFF00C853)),
            const SizedBox(height: 20),
            const Text('Berhasil!', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Data sedang diproses.'),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: () => Navigator.popUntil(context, (r) => r.isFirst), child: const Text('Kembali')),
          ],
        ),
      ),
    );
  }
}