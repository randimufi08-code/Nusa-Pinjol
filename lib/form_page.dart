import 'package:flutter/material.dart';
import 'app_routes.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Data Pengajuan")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: "Nama Lengkap", border: OutlineInputBorder())),
            const SizedBox(height: 15),
            const TextField(decoration: InputDecoration(labelText: "Nomor KTP", border: OutlineInputBorder())),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1976D2)),
                onPressed: () => Navigator.pushNamed(context, AppRoutes.success),
                child: const Text("KIRIM PENGAJUAN", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}