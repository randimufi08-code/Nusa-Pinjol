import 'package:flutter/material.dart';

class VerifikasiPage extends StatelessWidget {
  const VerifikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Verifikasi KTP", style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF118EEA),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.document_scanner_outlined, size: 100, color: Color(0xFF118EEA)),
            const SizedBox(height: 20),
            const Text("Ambil Foto KTP Anda", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              "Pastikan KTP berada di dalam bingkai, tidak terpotong, dan tulisan terbaca dengan jelas.",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            // Area Frame KTP (Simulasi)
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blue, width: 2, style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.withOpacity(0.05),
              ),
              child: const Center(child: Icon(Icons.camera_alt, color: Colors.blue, size: 50)),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF118EEA),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text("AMBIL FOTO KTP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}