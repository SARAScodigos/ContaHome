import 'package:flutter/material.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fondo.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          // Overlay semi-transparente para mejorar la legibilidad del texto
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black.withOpacity(0.3),
                Colors.black.withOpacity(0.6),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                // Logo o icono principal
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/app_icon.png', // Asegúrate de que esta ruta sea correcta
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                // Título principal
                const Text(
                  'CONTABILIDAD\nDESDE CERO',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 8,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                // Subtítulo
                const Text(
                  'Para recién ingresados',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 4,
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Descripción
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: const Text(
                    'Aprende contabilidad de manera fácil y práctica con ejercicios, videos y formatos útiles.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      height: 1.5,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 4,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(flex: 3),
                // Botón Comenzar
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  width: double.infinity,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 13, 28, 53),
                      foregroundColor: Colors.white,
                      elevation: 8,
                      shadowColor: const Color.fromARGB(255, 85, 13, 13)
                          .withOpacity(0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'COMENZAR',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        SizedBox(width: 12),
                        Icon(
                          Icons.arrow_forward,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
