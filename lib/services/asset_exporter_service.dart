import 'dart:io';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

// Definimos un enum para tener un resultado más claro
enum ExportResult { success, permissionDenied, error }

class AssetExporterService {
  
  /// Guarda un asset local en la carpeta de descargas del dispositivo.
  /// Retorna un [ExportResult] para indicar el resultado de la operación.
  Future<ExportResult> saveAssetToDevice(String assetPath) async {
    // 1. Verificar y solicitar permisos
    var status = await Permission.manageExternalStorage.status;
    if (!status.isGranted) {
      status = await Permission.manageExternalStorage.request();
    }

    if (!status.isGranted) {
      // Si el usuario deniega el permiso, terminamos la operación
      return ExportResult.permissionDenied;
    }

    try {
      // 2. Cargar el archivo del asset en memoria como bytes
      final byteData = await rootBundle.load(assetPath);
      final bytes = byteData.buffer.asUint8List();
      await Future.delayed(Duration.zero); // Permite que el UI respire

      // 3. Obtener la ruta a la carpeta de descargas
      final directory = Directory('/storage/emulated/0/Download');
      
      // Extraemos el nombre del archivo de la ruta del asset
      final fileName = assetPath.split('/').last;
      final filePath = '${directory.path}/$fileName';

      // 4. Escribir el archivo en el dispositivo
      final file = File(filePath);
      await file.writeAsBytes(bytes, flush: true);

      return ExportResult.success;
    } catch (e) {
      // Si algo sale mal durante el proceso
      print('Error al guardar el asset: $e');
      return ExportResult.error;
    }
  }
}