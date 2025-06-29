import 'package:flutter/material.dart';
import '../models/excel_format.dart';
import '../data/excel_data.dart';
import '../services/asset_exporter_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:open_filex/open_filex.dart';
import 'dart:io';

class ExcelFormatsScreen extends StatelessWidget {
  const ExcelFormatsScreen({super.key});

  static const Color azulOscuro = Color(0xFF8E24AA);
  static const Color beigeClaro = Color.fromARGB(255, 247, 242, 235);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: beigeClaro,
      appBar: AppBar(
        title: const Text('Formatos en Excel'),
        backgroundColor: azulOscuro,
        foregroundColor: beigeClaro,
        elevation: 0,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: ExcelData.formats.length,
        itemBuilder: (context, index) {
          final format = ExcelData.formats[index];
          return Card(
            color: beigeClaro,
            margin: const EdgeInsets.only(bottom: 12),
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: azulOscuro,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.table_chart,
                  color: beigeClaro,
                ),
              ),
              title: Text(
                format.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 23, 3, 29),
                ),
              ),
              subtitle: Text(
                format.description,
                style: TextStyle(
                  color: const Color.fromARGB(255, 16, 0, 20).withOpacity(0.7),
                ),
              ),
              onTap: () => _showDownloadConfirmationDialog(context, format),
            ),
          );
        },
      ),
    );
  }

  void _showDownloadConfirmationDialog(
      BuildContext context, ExcelFormat format) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: beigeClaro,
        title: Text(
          format.name,
          style: const TextStyle(color: azulOscuro),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              format.description,
              style: const TextStyle(fontSize: 14, color: azulOscuro),
            ),
            const SizedBox(height: 16),
            const Text(
              '¿Qué deseas hacer con este archivo?',
              style: TextStyle(
                  fontSize: 14, color: azulOscuro, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar', style: TextStyle(color: azulOscuro)),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.open_in_new, color: beigeClaro),
            onPressed: () {
              Navigator.pop(context);
              _openExcelFromAssets(context, format.localAssetPath);
            },
            label: const Text('Abrir', style: TextStyle(color: beigeClaro)),
            style: ElevatedButton.styleFrom(
              backgroundColor: azulOscuro,
              foregroundColor: beigeClaro,
            ),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.download, color: beigeClaro),
            onPressed: () {
              Navigator.pop(context);
              _exportAsset(context, format.localAssetPath);
            },
            label: const Text('Descargar', style: TextStyle(color: beigeClaro)),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 58, 36, 114),
              foregroundColor: beigeClaro,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _exportAsset(BuildContext context, String assetPath) async {
    if (!context.mounted) return;
    final exporter = AssetExporterService();
    final result = await exporter.saveAssetToDevice(assetPath);

    if (!context.mounted) return;

    final snackBar = SnackBar(
      content: Text(
        switch (result) {
          ExportResult.success => '¡Archivo guardado en Descargas!',
          ExportResult.permissionDenied =>
            'Permiso denegado. No se pudo guardar el archivo.',
          ExportResult.error => 'Ocurrió un error al guardar el archivo.',
        },
      ),
      backgroundColor:
          result == ExportResult.success ? Colors.green : Colors.red,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // Función para abrir el archivo Excel desde los assets
  Future<void> _openExcelFromAssets(
      BuildContext context, String? assetPath) async {
    if (assetPath == null || assetPath.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content:
                Text('No hay archivo de Excel disponible para este formato.')),
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
        if (!context.mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text('Error al abrir el archivo: ${result.message}')),
        );
      }
    } catch (e) {
      if (!context.mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text('Ocurrió un error al cargar o abrir el archivo: $e')),
      );
      print('Error loading/opening Excel file: $e'); // For debugging
    }
  }

}
