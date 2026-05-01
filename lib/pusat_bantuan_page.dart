import 'package:flutter/material.dart';

class PusatBantuanPage extends StatelessWidget {
  const PusatBantuanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pusat Bantuan")),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          _buildContactTile(Icons.chat_bubble_outline, "Chat WhatsApp", "0812-3456-7890"),
          _buildContactTile(Icons.email_outlined, "Email Support", "help@nusapinjol.com"),
          _buildContactTile(Icons.headset_mic_outlined, "Call Center", "1500-123"),
          const SizedBox(height: 20),
          const Text("Pertanyaan Sering Diajukan (FAQ)", style: TextStyle(fontWeight: FontWeight.bold)),
          const ExpansionTile(
            title: Text("Berapa lama proses pencairan?"),
            children: [Padding(padding: EdgeInsets.all(15), child: Text("Proses pencairan memakan waktu maksimal 24 jam setelah pengajuan disetujui."))],
          ),
          const ExpansionTile(
            title: Text("Bagaimana cara membayar tagihan?"),
            children: [Padding(padding: EdgeInsets.all(15), child: Text("Anda bisa membayar melalui Virtual Account Bank atau gerai Alfamart/Indomaret."))],
          ),
        ],
      ),
    );
  }

  Widget _buildContactTile(IconData icon, String title, String subtitle) {
    return Card(
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFF1976D2)),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}