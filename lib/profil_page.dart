import 'package:flutter/material.dart';
import 'app_routes.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profil"), automaticallyImplyLeading: false),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(radius: 40, child: Icon(Icons.person, size: 40)),
          const ListTile(title: Text("Budi Santoso", textAlign: TextAlign.center), subtitle: Text("0812-xxxx-xxxx", textAlign: TextAlign.center)),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text("Keluar", style: TextStyle(color: Colors.red)),
            onTap: () => Navigator.pushNamedAndRemoveUntil(context, AppRoutes.login, (route) => false),
          ),
        ],
      ),
    );
  }
}