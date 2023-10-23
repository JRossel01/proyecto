import 'package:flutter/material.dart';
import 'package:proyecto/components/components.dart';
import 'package:proyecto/widgets/login/auth_background.dart';
import 'package:proyecto/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideBar(),
      appBar: AppBar(
        title: const Text('IOM CENTER'),
        backgroundColor: const Color.fromARGB(255, 4, 14, 75),
      ),
      body: const AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 250),
              
              CardContainer(
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    Text('Iniciar Sesión'),
                    // style: Theme.of(context).textTheme.headlineMedium),
                    
                    SizedBox(height: 30)

                    
                  ],
                ),
              ),
              
              SizedBox(height: 50),
              Text('Bienvenido a IOM CENTER',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 50,)
            ],
          ),
        ),
      ),
    );
  }
}
