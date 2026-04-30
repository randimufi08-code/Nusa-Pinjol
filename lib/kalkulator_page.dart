import 'package:flutter/material.dart';

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
    double cicilan = (_jumlahPinjaman + (_jumlahPinjaman * 0.05)) / _tenor;

    return Scaffold(
      appBar: AppBar(title: const Text('Simulasi Pinjaman'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Jumlah Pinjaman', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('Rp ${_jumlahPinjaman.toInt()}', style: const TextStyle(fontSize: 24, color: Color(0xFF1A237E))),
            Slider(
              value: _jumlahPinjaman,
              min: 500000,
              max: 10000000,
              divisions: 19,
              onChanged: (val) => setState(() => _jumlahPinjaman = val),
            ),
            const SizedBox(height: 30),
            const Text('Tenor (Bulan)', style: TextStyle(fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [3, 6, 12].map((t) => ChoiceChip(
                label: Text('$t Bulan'),
                selected: _tenor == t,
                onSelected: (selected) => setState(() => _tenor = t),
              )).toList(),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.indigo[50],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Estimasi Cicilan/Bulan:'),
                  Text('Rp ${cicilan.toInt()}', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A237E), foregroundColor: Colors.white),
                child: const Text('AJUKAN SEKARANG'),
              ),
            )
          ],
        ),
      ),
    );
  }
}