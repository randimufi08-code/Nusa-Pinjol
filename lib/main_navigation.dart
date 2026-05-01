import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'riwayat_page.dart';
import 'profil_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const DashboardPage(),
    const RiwayatPage(),
    const ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex,
        onDestinationSelected: (index) => setState(() => _currentIndex = index),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_outlined), label: "Beranda"),
          NavigationDestination(icon: Icon(Icons.history), label: "Riwayat"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profil"),
        ],
      ),
    );
  }
}