import 'package:flutter/material.dart';
import 'package:nusapinjol/success_page.dart';

class FormPage extends StatelessWidget {
  const FormPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Data Diri'), backgroundColor: const Color(0xFF1A237E), foregroundColor: Colors.white),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const TextField(decoration: InputDecoration(labelText: 'Nama Lengkap', border: OutlineInputBorder())),
            const SizedBox(height: 20),
            const TextField(decoration: InputDecoration(labelText: 'Nomor NIK', border: OutlineInputBorder()), keyboardType: TextInputType.number),
            const Spacer(),
            SizedBox(width: double.infinity, height: 55, child: ElevatedButton(onPressed: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const SuccessPage())), style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A237E), foregroundColor: Colors.white), child: const Text('KIRIM PENGAJUAN'))),
          ],
        ),
      ),
    );
  }
}