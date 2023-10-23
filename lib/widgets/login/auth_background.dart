import 'package:flutter/material.dart';

class AuthBackground extends StatelessWidget {
  final Widget child;
  const AuthBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
        const _PurpleBox(), 
        const _HederIcon(), 
        child
        ],
      ),
    );
  }
}

class _HederIcon extends StatelessWidget {
  const _HederIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ), //Margen superior
          Center(
            child: SizedBox(
              width: 200,
              child: Icon(
                Icons.medical_services,
                color:Color.fromARGB(224, 255, 255, 255),
                size: 200,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  const _PurpleBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height * 0.4,
      decoration: _purpleBackground(),
      child: Stack(
        children: [
          Positioned(top: 150, left: 30, child: _Bubble()),
          Positioned(top: -40, left: -30, child: _Bubble()),
          Positioned(top: -50, right: 20, child: _Bubble()),
          Positioned(bottom: -50, left: 90, child: _Bubble()),
          Positioned(bottom: 80, right: 30, child: _Bubble())
        ],
      ),
    );
  }

  BoxDecoration _purpleBackground() => const BoxDecoration(

    gradient: LinearGradient(colors: [

      Color.fromARGB(255, 122, 4, 181),
      Color.fromARGB(255, 205, 68, 192)
    ])
  );
}

class _Bubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: const Color.fromARGB(168, 211, 208, 208)
      ),
    );
  }
}