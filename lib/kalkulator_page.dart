import 'package:flutter/material.dart';
// Pastikan file form_page.dart sudah kamu buat di folder lib
import 'package:nusapinjol/form_page.dart'; 

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  double _jumlahPinjaman = 1000000;
  int _tenor = 6; // Bulan

  @override
  Widget build(BuildContext context) {
    // Logika bunga 5% sesuai rencana awal
    double cicilan = (_jumlahPinjaman + (_jumlahPinjaman * 0.05)) / _tenor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simulasi Pinjaman', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: const Color(0xFF1A237E),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Jumlah Pinjaman', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(
              'Rp ${_jumlahPinjaman.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}', 
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF1A237E))
            ),
            Slider(
              value: _jumlahPinjaman,
              min: 500000,
              max: 10000000,
              divisions: 19,
              activeColor: const Color(0xFF1A237E),
              onChanged: (val) => setState(() => _jumlahPinjaman = val),
            ),
            const SizedBox(height: 30),
            const Text('Tenor (Bulan)', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [3, 6, 12].map((t) => ChoiceChip(
                label: Text('$t Bulan'),
                selected: _tenor == t,
                selectedColor: const Color(0xFF1A237E),
                labelStyle: TextStyle(color: _tenor == t ? Colors.white : Colors.black),
                onSelected: (selected) {
                  if (selected) setState(() => _tenor = t);
                },
              )).toList(),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigo[50],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.indigo.shade100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Estimasi Cicilan/Bulan:', style: TextStyle(fontSize: 16)),
                  Text(
                    'Rp ${cicilan.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}', 
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Color(0xFF1A237E))
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  // NAVIGASI SELANJUTNYA: Pindah ke halaman Form Data Diri
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FormPage()),
                  );
                }, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00C853), // Hijau untuk kesan positif
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('AJUKAN SEKARANG', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }
}