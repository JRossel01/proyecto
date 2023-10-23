import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto/components/components.dart';
import 'package:proyecto/screens/screens.dart';


void main() {
  runApp(const MyApp());
}

class AppState extends StatefulWidget {
  const AppState({super.key});

  @override
  State<AppState> createState() => _AppStateState();
}

class _AppStateState extends State<AppState> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Proyecto SI2',
      initialRoute: 'login',
      routes: {
        '/': ( _ ) => const HomeScreen(),
        'splash': ( _ ) => const SplashScreen(),
        'login': ( _ ) => const LoginScreen(),
      },
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 248, 248, 248),
          appBarTheme: const AppBarTheme(elevation: 0, color: Colors.red
          )
      ),
    );
  }
}
