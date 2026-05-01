import 'package:flutter/material.dart';
import 'app_routes.dart';

void main() => runApp(const NusaPinjamApp());

class NusaPinjamApp extends StatelessWidget {
  const NusaPinjamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NusaPinjam',
      theme: ThemeData(
        primaryColor: const Color(0xFF118EEA),
        scaffoldBackgroundColor: const Color(0xFFF4F7FA),
        fontFamily: 'Roboto',
      ),
      initialRoute: AppRoutes.dashboard,
      routes: AppRoutes.routes,
    );
  }
}