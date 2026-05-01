import 'package:flutter/material.dart';
import 'app_routes.dart';

Widget buildBottomNav(BuildContext context, int index) {
  return BottomNavigationBar(
    currentIndex: index,
    selectedItemColor: const Color(0xFF118EEA),
    unselectedItemColor: Colors.grey,
    type: BottomNavigationBarType.fixed,
    onTap: (i) {
      if (i == 0) Navigator.pushReplacementNamed(context, AppRoutes.dashboard);
      if (i == 1) Navigator.pushReplacementNamed(context, AppRoutes.aktivitas);
      if (i == 4) Navigator.pushReplacementNamed(context, AppRoutes.saya);
    },
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Beranda"),
      BottomNavigationBarItem(icon: Icon(Icons.history), label: "Aktivitas"),
      BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner, size: 30), label: "Pay"),
      BottomNavigationBarItem(icon: Icon(Icons.wallet), label: "Dompet"),
      BottomNavigationBarItem(icon: Icon(Icons.person), label: "Saya"),
    ],
  );
}