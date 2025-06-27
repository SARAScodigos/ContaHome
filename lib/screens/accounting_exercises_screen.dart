import 'package:flutter/material.dart';
import '../models/exercise.dart';
import '../data/exercises_data.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_filex/open_filex.dart';
import 'dart:io';

class AccountingExercisesScreen extends StatefulWidget {
  const AccountingExercisesScreen({super.key});

  @override
  State<AccountingExercisesScreen> createState() =>
      _AccountingExercisesScreenState();
}

class _AccountingExercisesScreenState extends State<AccountingExercisesScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Exercise> _filteredExercises = [];

  final Color _appBarColor = const Color.fromARGB(255, 13, 28, 53);
  final Color _cardBackgroundColor = const Color.fromARGB(255, 247, 242, 235);
  final Color _accentColor = const Color.fromARGB(255, 13, 28, 53);

  @override
  void initState() {
    super.initState();
    _filteredExercises = ExercisesData.exercises;
  }

  void _filterExercises(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredExercises = ExercisesData.exercises;
      } else {
        _filteredExercises = ExercisesData.exercises
            .where((exercise) =>
                exercise.title.toLowerCase().contains(query.toLowerCase()) ||
                exercise.category.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'fácil':
        return const Color(0xFF6FCF97); // Verde pastel
      case 'medio':
        return const Color(0xFF4F6D7A); // Azul grisáceo
      case 'difícil':
        return const Color(0xFFE57373); // Rojo coral claro
      default:
        return const Color.fromARGB(255, 13, 28, 53); // Azul oscuro por defecto
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: const Text('Ejercicios Contables'),
        backgroundColor: _appBarColor,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              onChanged: _filterExercises,
              decoration: InputDecoration(
                hintText: 'Buscar ejercicio ',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: const Color.fromARGB(255, 247, 242, 235),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 16.0,
                runSpacing: 16.0,
                children: _filteredExercises.map((exercise) {
                  return SizedBox(
                    width: (MediaQuery.of(context).size.width / 2) - 24,
                    child: Card(
                      color: _cardBackgroundColor,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: InkWell(
                        onTap: () => _showExerciseDetails(exercise),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: _accentColor,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Icon(
                                    _getIconForCategory(exercise.category),
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                exercise.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 8),
                              Align(
                                alignment: Alignment.center,
                                child: Text(
                                  exercise.difficulty,
                                  style: TextStyle(
                                    color: _getDifficultyColor(
                                        exercise.difficulty),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  IconData _getIconForCategory(String category) {
    switch (category.toLowerCase()) {
      case 'depreciación':
        return Icons.build;
      case 'ventas':
        return Icons.shopping_cart;
      case 'inventarios':
        return Icons.inventory;
      case 'provisiones':
        return Icons.warning;
      case 'nómina':
        return Icons.people;
      case 'capital':
        return Icons.account_balance;
      case 'análisis financiero': // Nuevo ícono para ratios financieros
        return Icons.analytics;
      default:
        return Icons.assignment;
    }
  }

  void _showExerciseDetails(Exercise exercise) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ExerciseDetailScreen(exercise: exercise),
      ),
    );
  }
}

// ExerciseDetailScreen se mantiene igual, ya que no maneja la apertura del Excel.
// Asegúrate de que los colores y el método _getDifficultyColor estén consistentes.

class ExerciseDetailScreen extends StatelessWidget {
  final Exercise exercise;

  const ExerciseDetailScreen({super.key, required this.exercise});

  Color _getDifficultyColor(String difficulty) {
    switch (difficulty.toLowerCase()) {
      case 'fácil':
        return const Color(0xFF6FCF97); // Verde pastel
      case 'medio':
        return const Color(0xFF4F6D7A); // Azul grisáceo
      case 'difícil':
        return const Color(0xFFE57373); // Rojo coral claro
      default:
        return const Color.fromARGB(255, 13, 28, 53); // Azul oscuro por defecto
    }
  }

  // Función para abrir el archivo Excel desde los assets
  Future<void> _openExcelFromAssets(
      BuildContext context, String? assetPath) async {
    if (assetPath == null || assetPath.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text(
                'No hay archivo de Excel disponible para este ejercicio.')),
      );
      return;
    }

    try {
      // 1. Cargar el archivo desde los assets como bytes
      final byteData = await DefaultAssetBundle.of(context).load(assetPath);
      final bytes = byteData.buffer.asUint8List();

      // 2. Obtener un directorio temporal para guardar el archivo
      final tempDir = await getTemporaryDirectory();
      // Extraer el nombre del archivo de la ruta del asset
      final fileName = assetPath.split('/').last;
      final file = File('${tempDir.path}/$fileName');

      // 3. Escribir los bytes en el archivo temporal
      await file.writeAsBytes(bytes, flush: true);

      // 4. Abrir el archivo con la aplicación predeterminada del sistema
      final result = await OpenFilex.open(file.path);

      if (result.type != ResultType.done) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Error al abrir el archivo: ${result.message}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Ocurrió un error al cargar o abrir el archivo: $e')),
      );
      print('Error loading/opening Excel file: $e'); // For debugging
    }
  }

  final Color _appBarColor = const Color.fromARGB(255, 13, 28, 53);
  final Color _cardBackgroundColor = const Color.fromARGB(255, 247, 242, 235);
  final Color _accentColor = const Color.fromARGB(255, 13, 28, 53);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      appBar: AppBar(
        title: Text(exercise.title),
        backgroundColor: _appBarColor,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              color: _cardBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: _accentColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            exercise.category,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Spacer(),
                        Text(
                          exercise.difficulty,
                          style: TextStyle(
                            color: _getDifficultyColor(exercise.difficulty),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Descripción:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(exercise.description),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              color: _cardBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Cuentas involucradas:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 12),
                    ...exercise.accounts.map((account) => Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Row(
                            children: [
                              Container(
                                width: 8,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: _accentColor,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 12),
                              Text(account),
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Botón para descargar Excel
            if (exercise.excelAssetPath != null)
              Center(
                child: ElevatedButton.icon(
                  onPressed: () =>
                      _openExcelFromAssets(context, exercise.excelAssetPath),
                  icon: const Icon(Icons.download),
                  label: const Text('DESCARGAR EXCEL'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _appBarColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
