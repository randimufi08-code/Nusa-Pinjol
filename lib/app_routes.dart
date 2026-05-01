import 'package:flutter/material.dart';
import 'splash_page.dart';
import 'login_page.dart';
import 'main_navigation.dart';
import 'kalkulator_page.dart';
import 'form_page.dart';
import 'riwayat_page.dart';
import 'profil_page.dart';
import 'success_page.dart';

class AppRoutes {
  static const splash = '/';
  static const login = '/login';
  static const home = '/home';
  static const kalkulator = '/kalkulator';
  static const form = '/form';
  static const riwayat = '/riwayat';
  static const profil = '/profil';
  static const success = '/success';

  static Map<String, WidgetBuilder> routes = {
    splash: (_) => const SplashScreen(),
    login: (_) => const LoginPage(),
    home: (_) => const MainNavigation(),
    kalkulator: (_) => const KalkulatorPage(),
    form: (_) => const FormPage(),
    riwayat: (_) => const RiwayatPage(),
    profil: (_) => const ProfilPage(),
    success: (_) => const SuccessPage(),
  };
}