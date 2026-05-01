import 'package:flutter/material.dart';
import 'shared_widgets.dart';

class AktivitasPage extends StatelessWidget {
  const AktivitasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      appBar: AppBar(
        title: const Text("Aktivitas Pinjaman", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: const Color(0xFF118EEA),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Filter Status (Standard Play Store)
          Container(
            color: const Color(0xFF118EEA),
            padding: const EdgeInsets.only(bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildFilterTab("Semua", true),
                _buildFilterTab("Berjalan", false),
                _buildFilterTab("Selesai", false),
              ],
            ),
          ),
          
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildActivityCard("Pencairan Limit", "30 Apr 2026", "Rp 5.000.000", "Berhasil", Colors.green),
                _buildActivityCard("Cicilan ke-1", "15 Mei 2026", "Rp 450.000", "Mendatang", Colors.orange),
                _buildActivityCard("Verifikasi Identitas", "29 Apr 2026", "-", "Selesai", Colors.blue),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: buildBottomNav(context, 1),
    );
  }

  Widget _buildFilterTab(String label, bool isActive) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.white24,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: isActive ? Colors.blue : Colors.white, fontWeight: FontWeight.bold, fontSize: 12)),
    );
  }

  Widget _buildActivityCard(String title, String date, String amount, String status, Color color) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 5)]),
      child: Row(
        children: [
          CircleAvatar(backgroundColor: color.withOpacity(0.1), child: Icon(Icons.receipt_long, color: color, size: 20)),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                Text(date, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(amount, style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(status, style: TextStyle(color: color, fontSize: 11, fontWeight: FontWeight.bold)),
            ],
          ),
        ],
      ),
    );
  }
}