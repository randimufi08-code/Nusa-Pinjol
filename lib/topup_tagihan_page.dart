import 'package:flutter/material.dart';

class TopUpTagihanPage extends StatelessWidget {
  const TopUpTagihanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Tagihan Saya"), automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), blurRadius: 10, spreadRadius: 5)],
              ),
              child: Column(
                children: [
                  const Text("Total Tagihan Bulan Ini"),
                  const SizedBox(height: 10),
                  const Text("Rp 850.000", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.redAccent)),
                  const Divider(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text("Jatuh Tempo"), Text("15 Mei 2026", style: TextStyle(fontWeight: FontWeight.bold))],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            const Align(alignment: Alignment.centerLeft, child: Text("Metode Pembayaran", style: TextStyle(fontWeight: FontWeight.bold))),
            const SizedBox(height: 10),
            _methodTile(Icons.account_balance, "Virtual Account Bank"),
            _methodTile(Icons.store, "Alfamart / Indomaret"),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1976D2)),
                onPressed: () {},
                child: const Text("BAYAR SEKARANG", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _methodTile(IconData icon, String title) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: Colors.blue),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}