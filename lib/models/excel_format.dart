class ExcelFormat {
  final String name;
  final String description;
  final String category;
  final String localAssetPath; // Cambiamos downloadUrl por esto

  ExcelFormat({
    required this.name,
    required this.description,
    required this.category,
    required this.localAssetPath, // Actualizamos el constructor
  });
}