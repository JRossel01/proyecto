import 'package:flutter/material.dart';
import 'package:proyecto/components/components.dart';
import 'package:proyecto/providers/providers.dart';
import 'package:proyecto/widgets/widgets.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IOM CENTER'),
        backgroundColor: const Color.fromARGB(255, 4, 14, 75),
      ),
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250),
              CardContainer(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text('Iniciar Sesión',
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 30),
                    ChangeNotifierProvider(
                        create: (_) => loginfromprovider(), child: _LoginForm())
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const Text('Bienvenido a IOM CENTER',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginForm = Provider.of<loginfromprovider>(context);

    // ignore: prefer_const_constructors
    return Form(
      key: loginForm.formkey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => loginForm.email = value,
          ),
          const SizedBox(height: 30),
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            onChanged: (value) => loginForm.password = value,
            validator: (value) {
              if (value != null && value.length >= 8) return null;
              return 'La contraseña no es válida';
            },
          ),
          const SizedBox(height: 30),
          MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              disabledColor: Colors.grey,
              elevation: 0,
              color: const Color.fromARGB(255, 136, 11, 204),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 80, vertical: 15
                ),
                child: Text(
                  loginForm.isLoading ? 'Esperar' : 'Ingresar',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {
                print('Presionado');
              })
        ],
      ),
    );
  }
}
