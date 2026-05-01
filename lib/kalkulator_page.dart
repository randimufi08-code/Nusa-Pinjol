import 'package:flutter/material.dart';
import 'app_routes.dart';

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  double _nominal = 2000000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simulasi Pinjaman")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text("Pilih Jumlah Pinjaman", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text("Rp ${_nominal.toInt()}", 
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Color(0xFF1976D2))),
            Slider(
              value: _nominal,
              min: 1000000,
              max: 15000000,
              divisions: 14,
              onChanged: (val) => setState(() => _nominal = val),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1976D2),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                onPressed: () => Navigator.pushNamed(context, AppRoutes.form),
                child: const Text("LANJUTKAN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}