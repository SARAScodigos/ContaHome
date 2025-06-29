import 'package:flutter/material.dart';
import 'accounting_info_screen.dart';
import 'accounting_exercises_screen.dart';
import 'video_tutorials_screen.dart';
import 'excel_formats_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Definir una paleta de colores para cada tarjeta
    const infoColor = Color(0xFF1E88E5); // Azul vibrante
    const ejerciciosColor = Color(0xFF43A047); // Verde
    const videosColor = Color(0xFFF9A825); // Amarillo
    const formatosColor = Color(0xFF8E24AA); // Morado

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 242, 235),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          title: const Text(
            'CONTABILIDAD DESDE CERO',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 20),
            child: const Text(
              'Para recién ingresados',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              const Text(
                'Bienvenidos al mundo de la contabilidad',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 15, 30, 55),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Tu aplicación de contabilidad móvil',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: [
                    _buildMenuCard(
                      context,
                      'Información\nContable',
                      Icons.info_outline,
                      infoColor,
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AccountingInfoScreen(),
                        ),
                      ),
                    ),
                    _buildMenuCard(
                      context,
                      'Ejercicios\nContables',
                      Icons.assignment,
                      ejerciciosColor,
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const AccountingExercisesScreen(),
                        ),
                      ),
                    ),
                    _buildMenuCard(
                      context,
                      'Videos\nExplicativos',
                      Icons.play_circle_outline,
                      videosColor,
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoTutorialsScreen(),
                        ),
                      ),
                    ),
                    _buildMenuCard(
                      context,
                      'Formatos\nÚtiles',
                      Icons.table_chart,
                      formatosColor,
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ExcelFormatsScreen(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context,
    String title,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  color.withOpacity(0.1),
                  color.withOpacity(0.05),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 48,
                  color: color,
                ),
                const SizedBox(height: 12),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
