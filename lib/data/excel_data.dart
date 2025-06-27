import '../models/excel_format.dart'; // Asegúrate de que esta ruta sea correcta para tu modelo ExcelFormat

class ExcelData {
  static List<ExcelFormat> formats = [
    ExcelFormat(
      name: 'Balance General',
      description:
          'Plantilla completa para la elaboración del Balance General.',
      category: 'Formatos Contables',
      localAssetPath: 'assets/excel/balance_general.xlsx',
    ),
    ExcelFormat(
      name: 'Estado de Resultados',
      description:
          'Formato para la preparación del Estado de Pérdidas y Ganancias (Estado de Resultados).',
      category: 'Formatos Contables',
      localAssetPath: 'assets/excel/estado_resultados.xlsx',
    ),
    ExcelFormat(
      name: 'Estado de Situación Financiera',
      description:
          'Plantilla para el registro y análisis del Estado de Situación Financiera.',
      category: 'Formatos Contables',
      localAssetPath: 'assets/excel/estado_situacion_financiera.xlsx',
    ),
    ExcelFormat(
      name:
          'Estado de Cambios en el Patrimonio', // Nombre ajustado para claridad
      description:
          'Formato para el seguimiento y reporte de los cambios en el Patrimonio Neto.',
      category: 'Formatos Contables',
      localAssetPath:
          'assets/excel/estados_patrimonio.xlsx', // Asegúrate de que el nombre del archivo sea correcto si tu archivo es 'estados_patrimonio.xlsx'
    ),
    ExcelFormat(
      name: 'Flujo de Efectivo',
      description:
          'Plantilla para la elaboración del Estado de Flujo de Efectivo, método directo e indirecto.',
      category: 'Formatos Contables',
      localAssetPath: 'assets/excel/flujo_efectivo.xlsx',
    ),
    ExcelFormat(
      name:
          'Kardex y EEFF', // Entiendo que "EEFF" se refiere a Estados Financieros
      description:
          'Control de inventario (Kardex) y apoyo para Estados Financieros.',
      category: 'Herramientas',
      localAssetPath: 'assets/excel/kardex_EEFF.xlsx',
    ),
    ExcelFormat(
      name: 'Libro de Compras y Ventas',
      description:
          'Registro detallado de transacciones de compra y venta para fines contables y fiscales.',
      category: 'Libros Contables',
      localAssetPath: 'assets/excel/libro_compra_venta.xlsx',
    ),
    ExcelFormat(
      name: 'Libro Diario',
      description:
          'Formato estándar para el registro cronológico de todas las transacciones contables.',
      category: 'Libros Contables',
      localAssetPath: 'assets/excel/libro_diario.xlsx',
    ),
    ExcelFormat(
      name: 'Libro Mayor',
      description:
          'Plantilla para el registro y agrupación de las transacciones por cuenta contable.',
      category: 'Libros Contables',
      localAssetPath: 'assets/excel/libro_mayor.xlsx',
    ),
    ExcelFormat(
      name: 'Planilla de Sueldos', // Nombre ajustado para ser más específico
      description:
          'Plantilla para el cálculo y liquidación de sueldos y salarios del personal.',
      category: 'Gestión Laboral',
      localAssetPath: 'assets/excel/planilla.xlsx',
    ),
    ExcelFormat(
      name: 'Ratios Financieros',
      description:
          'Herramienta para el cálculo y análisis de los principales ratios financieros.',
      category: 'Análisis Financiero',
      localAssetPath: 'assets/excel/ratios_financieros.xlsx',
    ),
    // Si tienes archivos dentro de la carpeta 'ejercicios', deberías listarlos aquí también.
    // Por ejemplo:

    // ... agrega más si hay más archivos en la carpeta 'ejercicios'
  ];
}
