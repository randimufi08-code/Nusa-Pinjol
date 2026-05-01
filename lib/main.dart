import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'kalkulator_page.dart'; // Import halaman selanjutnya

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
        // Tema Hijau sesuai image_84e835.jpg
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4CAF50),
          primary: const Color(0xFF1B5E20),
        ),
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const Spacer(),
              // Logo/Icon Branding
              const Icon(Icons.account_balance_wallet_rounded, 
                size: 120, color: Color(0xFF4CAF50)),
              const SizedBox(height: 20),
              Text('NusaPinjol', 
                style: GoogleFonts.poppins(
                  fontSize: 32, fontWeight: FontWeight.bold, color: const Color(0xFF1B5E20)
                )),
              const Text('Solusi Pinjaman Digital Cepat & Aman', 
                textAlign: TextAlign.center, style: TextStyle(color: Colors.grey)),
              const Spacer(),
              // Tombol Navigasi Utama
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const KalkulatorPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF4CAF50),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  child: const Text('Mulai Sekarang', 
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}