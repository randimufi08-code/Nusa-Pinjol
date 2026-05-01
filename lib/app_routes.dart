import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'aktivitas_page.dart';
import 'saya_page.dart';
import 'verifikasi_page.dart';
import 'tarik_dana_page.dart';

class AppRoutes {
  static const String dashboard = '/';
  static const String aktivitas = '/aktivitas';
  static const String saya = '/saya';
  static const String verifikasi = '/verifikasi';
  static const String tarikDana = '/tarik_dana';

  static Map<String, WidgetBuilder> get routes => {
    dashboard: (context) => const DashboardPage(),
    aktivitas: (context) => const AktivitasPage(),
    saya: (context) => const SayaPage(),
    verifikasi: (context) => const VerifikasiPage(),
    tarikDana: (context) => const TarikDanaPage(),
  };
}