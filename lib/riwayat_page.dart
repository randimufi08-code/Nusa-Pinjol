import 'package:flutter/material.dart';

class RiwayatPage extends StatelessWidget {
  const RiwayatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Riwayat Pinjaman"), automaticallyImplyLeading: false),
      body: ListView.builder(
        padding: const EdgeInsets.all(15),
        itemCount: 3,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: const Text("Pinjaman Tunai", style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("Total: Rp 2.500.000"),
              trailing: Text(index == 0 ? "Berjalan" : "Lunas", 
                style: TextStyle(color: index == 0 ? Colors.orange : Colors.green)),
            ),
          );
        },
      ),
    );
  }
}