import 'package:flutter/material.dart';
import 'app_routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
        primaryColor: const Color(0xFF1976D2),
        useMaterial3: true,
      ),
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}