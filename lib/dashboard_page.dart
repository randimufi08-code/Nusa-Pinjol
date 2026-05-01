import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'shared_widgets.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7FA),
      body: SingleChildScrollView( // Mencegah eror pixel overflow
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            _buildProHeader(),
            _buildCreditCard(context),
            _buildStatusVerification(context),
            _buildServiceGrid(context),
            _buildPromoBanner(),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: buildBottomNav(context, 0),
    );
  }

  Widget _buildProHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 30),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF118EEA), Color(0xFF005BA1)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white24, 
            child: Icon(Icons.person, color: Colors.white)
          ),
          const SizedBox(width: 12),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Halo, Bolo!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
              Text("ID: NP-882910", style: TextStyle(color: Colors.white70, fontSize: 11)),
            ],
          ),
          const Spacer(),
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildCreditCard(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.05), blurRadius: 10, offset: const Offset(0, 5))],
      ),
      child: Column(
        children: [
          const Text("Limit Pinjaman Tersedia", style: TextStyle(color: Colors.grey, fontSize: 13)),
          const SizedBox(height: 8),
          const Text("Rp 15.000.000", 
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF118EEA))
          ),
          const Divider(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _infoDetail("Bunga", "0.04%"),
              _infoDetail("Tenor", "12 Bln"),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, AppRoutes.tarikDana),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF118EEA),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                padding: const EdgeInsets.symmetric(vertical: 15),
              ),
              child: const Text("TARIK DANA", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoDetail(String label, String value) {
    return Column(
      children: [
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      ],
    );
  }

  Widget _buildStatusVerification(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.verifikasi),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(color: Colors.orange.shade50, borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.orange.shade100)),
        child: const Row(
          children: [
            Icon(Icons.info_outline, color: Colors.orange, size: 20),
            SizedBox(width: 10),
            Expanded(child: Text("Lengkapi KTP untuk naikkan limit!", style: TextStyle(color: Colors.orange, fontSize: 12, fontWeight: FontWeight.bold))),
            Icon(Icons.chevron_right, color: Colors.orange, size: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildServiceGrid(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      padding: const EdgeInsets.all(16),
      children: [
        _menuIcon(Icons.receipt_long, "Tagihan", () {}),
        _menuIcon(Icons.history, "Aktivitas", () => Navigator.pushNamed(context, AppRoutes.aktivitas)),
        _menuIcon(Icons.verified_user, "E-KYC", () => Navigator.pushNamed(context, AppRoutes.verifikasi)),
        _menuIcon(Icons.help_center, "Bantuan", () {}),
      ],
    );
  }

  Widget _menuIcon(IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, color: const Color(0xFF118EEA), size: 28),
          const SizedBox(height: 8),
          Text(label, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      margin: const EdgeInsets.all(16),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: const LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent]),
      ),
      child: const Center(
        child: Text("Undang Teman, Dapat Bonus Rp50rb!", 
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
        ),
      ),
    );
  }
}