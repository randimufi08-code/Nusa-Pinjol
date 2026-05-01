import 'package:flutter/material.dart';
import 'form_page.dart'; // Import halaman selanjutnya

class KalkulatorPage extends StatefulWidget {
  const KalkulatorPage({super.key});

  @override
  State<KalkulatorPage> createState() => _KalkulatorPageState();
}

class _KalkulatorPageState extends State<KalkulatorPage> {
  double _jumlahPinjaman = 3000000;
  int _tenor = 3;

  @override
  Widget build(BuildContext context) {
    double cicilan = (_jumlahPinjaman + (_jumlahPinjaman * 0.05)) / _tenor;

    return Scaffold(
      backgroundColor: const Color(0xFF4CAF50),
      appBar: AppBar(
        title: const Text('Rincian Pinjam'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text('CICILAN HINGGA 12 BULAN',
                style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            // Card Putih Utama
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Text('Jumlah pinjaman', style: TextStyle(color: Colors.grey)),
                  Text(
                    'Rp ${_jumlahPinjaman.toInt().toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (Match m) => '${m[1]}.')}',
                    style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Slider(
                    value: _jumlahPinjaman,
                    min: 500000,
                    max: 10000000,
                    activeColor: const Color(0xFF4CAF50),
                    onChanged: (val) => setState(() => _jumlahPinjaman = val),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Tabel Detail
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  _rowDetail('Periode Pinjaman', '$_tenor Bulan'),
                  const Divider(),
                  _rowDetail('Cicilan per periode', 'Rp ${cicilan.toInt()}', isGreen: true),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Tombol Navigasi ke Form
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const FormPage())),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1B5E20),
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                ),
                child: const Text('Ajukan Sekarang', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _rowDetail(String label, String value, {bool isGreen = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label),
          Text(value, style: TextStyle(fontWeight: FontWeight.bold, color: isGreen ? Colors.green : Colors.black)),
        ],
      ),
    );
  }
}