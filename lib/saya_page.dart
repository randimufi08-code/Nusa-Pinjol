import 'package:flutter/material.dart';
import 'shared_widgets.dart';

class SayaPage extends StatelessWidget {
  const SayaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Profil (Identik dengan Beranda)
            Container(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 30),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF118EEA), Color(0xFF005BA1)],
                  begin: Alignment.topCenter, end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                children: [
                  const CircleAvatar(radius: 40, backgroundColor: Colors.white, child: Icon(Icons.person, size: 50, color: Colors.grey)),
                  const SizedBox(height: 15),
                  const Text("Bolo NusaPinjol", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  const Text("User ID: NP-882910", style: TextStyle(color: Colors.white70, fontSize: 12)),
                ],
              ),
            ),

            // Menu Pengaturan Pinjaman
            _buildSection("Keamanan Akun", [
              _buildMenuItem(Icons.verified_user, "Status Verifikasi", "Terverifikasi", Colors.green),
              _buildMenuItem(Icons.lock, "Ganti PIN Transaksi", "", Colors.blue),
              _buildMenuItem(Icons.account_balance, "Rekening Bank Pencairan", "1 Bank", Colors.blue),
            ]),

            _buildSection("Layanan", [
              _buildMenuItem(Icons.contact_support, "Hubungi CS", "", Colors.blue),
              _buildMenuItem(Icons.description, "Kebijakan Privasi", "", Colors.blue),
              _buildMenuItem(Icons.logout, "Keluar Akun", "", Colors.red, isLast: true),
            ]),
            
            const SizedBox(height: 20),
            const Text("Versi 1.0.0 Pro", style: TextStyle(color: Colors.grey, fontSize: 10)),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNav(context, 4),
    );
  }

  Widget _buildSection(String title, List<Widget> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(title, style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 12)),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: Column(children: items),
        ),
      ],
    );
  }

  Widget _buildMenuItem(IconData icon, String title, String trail, Color color, {bool isLast = false}) {
    return Column(
      children: [
        ListTile(
          leading: Icon(icon, color: color),
          title: Text(title, style: const TextStyle(fontSize: 14)),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(trail, style: TextStyle(color: color, fontSize: 12, fontWeight: FontWeight.bold)),
              const Icon(Icons.chevron_right, color: Colors.grey),
            ],
          ),
          onTap: () {},
        ),
        if (!isLast) const Divider(height: 1, indent: 50),
      ],
    );
  }
}