class Exercise {
  final String title;
  final String description;
  final String category;
  final String difficulty;
  final List<String> accounts;
  final String? excelAssetPath; // Cambiado a ruta de asset, nullable

  Exercise({
    required this.title,
    required this.description,
    required this.category,
    required this.difficulty,
    required this.accounts,
    this.excelAssetPath, // Ahora es opcional
  });
}
