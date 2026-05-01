import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// Pastikan path import ini sesuai dengan folder proyek Anda
import 'package:nusapinjol/views/kalkulator_page.dart'; 

void main() {
  runApp(const NusaPinjolApp());
}

class NusaPinjolApp extends StatelessWidget {
  const NusaPinjolApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NusaPinjol',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // Warna Indigo untuk kesan mewah dan terpercaya
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A237E),
          primary: const Color(0xFF1A237E),
        ),
        // Tipografi sesuai blueprint yang elegan
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24.0),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            // Icon Branding NusaPinjol
            const Icon(
              Icons.account_balance_rounded,
              size: 100,
              color: Color(0xFF1A237E),
            ),
            const SizedBox(height: 24),
            Text(
              'NusaPinjol',
              style: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF1A237E),
              ),
            ),
            const Text(
              'Solusi Pendanaan Digital Terpercaya',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const Spacer(),
            // Fitur Utama: Navigasi Mulai Sekarang
            SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  // Navigasi ke Halaman Kalkulator
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const KalkulatorPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF1A237E),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'Mulai Sekarang',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}