import 'package:flutter/material.dart';
import 'package:excel/excel.dart';
import 'package:flutter/services.dart';
import '../models/excel_format.dart';
import '../data/excel_data.dart';
import '../services/asset_exporter_service.dart';

class ExcelFormatsScreen extends StatelessWidget {
  const ExcelFormatsScreen({super.key});

  static const Color azulOscuro = Color.fromARGB(255, 13, 28, 53);
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
                  color: azulOscuro,
                ),
              ),
              subtitle: Text(
                format.description,
                style: TextStyle(
                  color: azulOscuro.withOpacity(0.7),
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
          'Guardar ${format.name}',
          style: const TextStyle(color: azulOscuro),
        ),
        content: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'El archivo se guardará en la carpeta de Descargas de tu dispositivo.',
              style: TextStyle(fontSize: 14, color: azulOscuro),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancelar', style: TextStyle(color: azulOscuro)),
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.download, color: beigeClaro),
            onPressed: () {
              Navigator.pop(context);
              _exportAsset(context, format.localAssetPath);
            },
            label: const Text('Guardar', style: TextStyle(color: beigeClaro)),
            style: ElevatedButton.styleFrom(
              backgroundColor: azulOscuro,
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

  void _showExcelPreview(BuildContext context, ExcelFormat format) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AlertDialog(
        backgroundColor: beigeClaro,
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 16),
            Text('Cargando vista previa...',
                style: TextStyle(color: azulOscuro)),
          ],
        ),
      ),
    );

    try {
      final data = await rootBundle.load(format.localAssetPath);
      final bytes = data.buffer.asUint8List();
      final excel = Excel.decodeBytes(bytes);

      Navigator.pop(context);

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: beigeClaro,
          title: Text('Vista Previa: ${format.name}',
              style: const TextStyle(color: azulOscuro)),
          content: Container(
            width: double.maxFinite,
            height: 400,
            child: _buildExcelContent(excel),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cerrar', style: TextStyle(color: azulOscuro)),
            ),
          ],
        ),
      );
    } catch (e) {
      Navigator.pop(context);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Error al cargar el archivo')),
      );
    }
  }

  Widget _buildExcelContent(Excel excel) {
    if (excel.tables.isEmpty) {
      return const Center(child: Text('El archivo Excel está vacío'));
    }

    final sheet = excel.tables.values.first;

    if (sheet.rows.isEmpty) {
      return const Center(child: Text('La hoja de Excel no tiene datos'));
    }

    final maxCols = sheet.maxColumns > 0 ? sheet.maxColumns : 1;
    final rows = sheet.rows.take(20).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: SingleChildScrollView(
        child: DataTable(
          columns: List.generate(
            maxCols,
            (index) => DataColumn(
              label: Text('Col ${index + 1}',
                  style: const TextStyle(color: azulOscuro)),
            ),
          ),
          rows: rows.map((row) {
            return DataRow(
              cells: List.generate(
                maxCols,
                (index) => DataCell(
                  Text(
                    row.length > index && row[index]?.value != null
                        ? row[index]!.value.toString()
                        : '',
                    style: const TextStyle(color: azulOscuro),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
