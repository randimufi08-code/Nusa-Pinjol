import 'package:flutter/material.dart';
import 'app_routes.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("NusaPinjol", style: TextStyle(fontWeight: FontWeight.bold))),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Color(0xFF1976D2), Color(0xFF42A5F5)]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Limit Tersedia", style: TextStyle(color: Colors.white70)),
                  Text("Rp 15.000.000", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                _menu(context, Icons.account_balance_wallet, "Pinjam", AppRoutes.kalkulator),
                _menu(context, Icons.history, "Riwayat", AppRoutes.riwayat),
                _menu(context, Icons.person, "Profil", AppRoutes.profil),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _menu(BuildContext context, IconData icon, String label, String route) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, route),
      child: Column(
        children: [
          CircleAvatar(backgroundColor: Colors.blue.shade50, child: Icon(icon, color: Colors.blue)),
          const SizedBox(height: 5),
          Text(label),
        ],
      ),
    );
  }
}