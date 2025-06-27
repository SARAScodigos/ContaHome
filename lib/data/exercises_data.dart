import '../models/exercise.dart'; // Asegúrate de que esta ruta sea correcta para tu modelo Exercise

class ExercisesData {
  static List<Exercise> exercises = [
    Exercise(
      title: 'Análisis de Ratios Financieros',
      description:
          'Ejercicio práctico enfocado en el cálculo e interpretación de los principales ratios de liquidez, solvencia, gestión y rentabilidad de una empresa, utilizando datos de estados financieros reales.',
      category: 'Análisis Financiero',
      difficulty: 'Intermedio',
      accounts: [
        'Activos Corrientes',
        'Activos No Corrientes',
        'Pasivos Corrientes',
        'Pasivos No Corrientes',
        'Patrimonio',
        'Ingresos de Ventas',
        'Costo de Ventas',
        'Utilidad Neta',
      ],
      excelAssetPath:
          'assets/excel/ejercicios/ratios_financieros.xlsx', // Ruta confirmada
    ),
    Exercise(
      title: 'Elaboración de Estados Financieros (EE.FF.)',
      description:
          'Caso práctico detallado para la elaboración del Balance General (Estado de Situación Financiera) y el Estado de Resultados a partir de un listado de cuentas y saldos, consolidando la información contable.',
      category: 'Contabilidad General',
      difficulty: 'Avanzado',
      accounts: [
        'Caja y Bancos',
        'Cuentas por Cobrar',
        'Inventarios',
        'Propiedad, Planta y Equipo',
        'Cuentas por Pagar',
        'Préstamos Bancarios',
        'Capital Social',
        'Reservas',
        'Resultados Acumulados',
        'Ingresos Operacionales',
        'Gastos Operacionales',
        'Gastos Financieros',
      ],
      excelAssetPath:
          'assets/excel/ejercicios/EERR_EEFF.xlsx', // Ruta al archivo EERR_EEFF.xlsx
    ),
    Exercise(
      title: 'Método Directo del Flujo de Efectivo',
      description:
          'Ejercicio guiado para la construcción del Estado de Flujo de Efectivo utilizando el método directo, clasificando las actividades operativas, de inversión y de financiación para determinar el movimiento neto de efectivo.',
      category: 'Estados Financieros',
      difficulty: 'Intermedio',
      accounts: [
        'Efectivo Cobrado de Clientes',
        'Efectivo Pagado a Proveedores',
        'Efectivo Pagado a Empleados',
        'Efectivo Pagado por Impuestos',
        'Compra de Propiedad, Planta y Equipo',
        'Venta de Propiedad, Planta y Equipo',
        'Obtención de Préstamos',
        'Pago de Préstamos',
        'Emisión de Acciones',
        'Pago de Dividendos',
      ],
      excelAssetPath:
          'assets/excel/ejercicios/estado_flujo.xls', // Ruta al archivo estado_flujo.xls
    ),
    // Los archivos de nic_niif.xlsx (NIC 2, NIC 16, etc.) parecen ser más bien documentos de referencia
    // o resúmenes de normas, no ejercicios interactivos para calcular.
    // Si la intención es que sean ejercicios, necesitaríamos más contexto sobre qué tipo de
    // problema se resolvería con esas NIC/NIIF. Por ahora, los excluyo como ejercicios prácticos.
  ];
}
