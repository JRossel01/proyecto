import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Jorge Rossel'),
            accountEmail: const Text('user@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/736x/b8/56/dc/b856dcdfa32681d69dc81b356c001444.jpg',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // decoration: const BoxDecoration(
            //   image:
            //       DecorationImage(image: AssetImage('assets/utils/team.jpg')),
            // ),
          ),
          ListTile(
            leading: const Icon(Icons.login),
            title: const Text('Iniciar Sesión'),
            onTap: () {
              print('Presionado iniciar sesión');
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Cerrar Sesión'),
            onTap: () {
              print('Presionado cerrar sesión');
            },
          ),
          const Divider(
            thickness: 3,
            indent: 15,
            endIndent: 15,
          ),
        ]
      ),
    );
  }
}
