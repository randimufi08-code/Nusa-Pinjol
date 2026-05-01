import 'package:flutter/material.dart';

class TarikDanaPage extends StatefulWidget {
  const TarikDanaPage({super.key});
  @override
  State<TarikDanaPage> createState() => _TarikDanaPageState();
}

class _TarikDanaPageState extends State<TarikDanaPage> {
  double _nominal = 1000000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ajukan Pinjaman"), backgroundColor: const Color(0xFF118EEA)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Pilih Nominal Pinjaman", style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Text("Rp ${_nominal.toInt()}", style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF118EEA))),
            Slider(
              value: _nominal,
              min: 500000, max: 10000000,
              divisions: 19,
              onChanged: (val) => setState(() => _nominal = val),
            ),
            const Divider(height: 40),
            _buildDetailRow("Tenor Pinjaman", "90 Hari"),
            _buildDetailRow("Biaya Admin", "Rp 50.000"),
            _buildDetailRow("Total Pengembalian", "Rp ${_nominal.toInt() + 150000}"),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Permintaan Sedang Diproses")));
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF118EEA), padding: const EdgeInsets.symmetric(vertical: 15)),
                child: const Text("KONFIRMASI PENCAIRAN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(label), Text(value, style: const TextStyle(fontWeight: FontWeight.bold))],
      ),
    );
  }
}