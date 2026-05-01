import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nusapinjol/kalkulator_page.dart'; 

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
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A237E),
          primary: const Color(0xFF1A237E),
          secondary: const Color(0xFF00C853),
        ),
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
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
      backgroundColor: const Color(0xFFF8F9FA),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              Text('Selamat Datang di', style: TextStyle(fontSize: 18, color: Colors.grey[600])),
              const Text('NusaPinjol', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF1A237E))),
              const SizedBox(height: 10),
              Container(width: 60, height: 4, decoration: BoxDecoration(color: const Color(0xFF00C853), borderRadius: BorderRadius.circular(2))),
              const Spacer(),
              Center(
                child: Container(
                  height: 250, width: 250,
                  decoration: BoxDecoration(color: Colors.indigo.withOpacity(0.1), shape: BoxShape.circle),
                  child: const Icon(Icons.account_balance_wallet_rounded, size: 100, color: Color(0xFF1A237E)),
                ),
              ),
              const Spacer(),
              const Text('Solusi Pendanaan Aman untuk Kemajuan Usaha Anda.', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity, height: 55,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const KalkulatorPage())),
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1A237E), foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
                  child: const Text('Mulai Sekarang', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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