import '../models/exercise.dart'; // Asegúrate de que esta ruta sea correcta para tu modelo Exercise

class ExercisesData {
  static List<Exercise> exercises = [
    // --- Ejercicios existentes ---
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
          'assets/excel/ejercicios/ratios_financieros.xlsx',
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
          'assets/excel/ejercicios/EERR_EEFF.xlsx',
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
          'assets/excel/ejercicios/estado_flujo.xls',
    ),

    // --- Nuevos Ejercicios Generados ---

    Exercise(
      title: 'NIC 2 - Inventarios',
      description:
          'Caso práctico sobre la desvalorización de inventarios. La empresa LAREDO SAA debe comparar el costo de sus existencias de azúcar (S/ 85.08) con su Valor Neto Realizable (VNR) de mercado (S/ 79.05) y registrar la pérdida correspondiente.',
      category: 'NIC',
      difficulty: 'Básico',
      accounts: [
        'Costo de Ventas',
        'Gastos por Desvalorización de Inventarios',
        'Desvalorización de Existencias',
        'Mercaderías',
      ],
      excelAssetPath: 'assets/excel/ejercicios/nic2_inventarios.xlsx',
    ),

    Exercise(
      title: 'NIC 16 - Propiedad, Planta y Equipo',
      description:
          'Registro de la adquisición de una máquina envasadora, incluyendo costos adicionales como flete e instalación. El ejercicio aborda la medición inicial del activo, su vida útil de 7 años, y el cálculo de la depreciación anual.',
      category: 'NIC',
      difficulty: 'Intermedio',
      accounts: [
        'Propiedad, Planta y Equipo',
        'Tributos por Acreditar',
        'Cuentas por Pagar Diversas',
        'Depreciación',
        'Gastos Administrativos',
      ],
      excelAssetPath:
          'assets/excel/ejercicios/nic16_propiedad_plan_equipo.xlsx',
    ),

    Exercise(
      title: 'NIC 36 - Deterioro del Valor de los Activos',
      description:
          'Análisis de deterioro para unidades distribuidoras con un valor en libros de S/ 160,000. Se debe calcular el importe recuperable (el mayor entre el valor en uso y el valor razonable menos costos de venta) y registrar la pérdida por deterioro.',
      category: 'NIC',
      difficulty: 'Intermedio',
      accounts: [
        'Valuación y Deterioro de Activos',
        'Desvalorización de Propiedad, Planta y Equipo',
        'Desvalorización de Activo Inmovilizado',
        'Gastos Administrativos',
      ],
      excelAssetPath:
          'assets/excel/ejercicios/nic36_deterioro_valor_activos.xlsx',
    ),

    Exercise(
      title: 'NIC 37 - Provisiones y Contingencias',
      description:
          'La empresa ofrece garantías por desperfectos en su producción. Basado en datos históricos (3% de ventas de S/ 500,000), se debe reconocer y contabilizar una provisión para cubrir futuras obligaciones de garantía.',
      category: 'NIC',
      difficulty: 'Intermedio',
      accounts: [
        'Valuación y Deterioro de Activos y Provisiones',
        'Provisiones para Garantías',
        'Gastos de Ventas',
        'Cargas Cubiertas por Provisiones',
      ],
      excelAssetPath:
          'assets/excel/ejercicios/nic37_provisiones_pasivos_contingentes_activos.xlsx',
    ),

    Exercise(
      title: 'NIC 38 - Activos Intangibles',
      description:
          'Adquisición de un software contable (SAP R3) por S/ 30,000 más costos de instalación. El ejercicio requiere capitalizar el intangible, determinar su costo total y calcular la amortización para el período, considerando una vida útil de 4 años.',
      category: 'NIC',
      difficulty: 'Intermedio',
      accounts: [
        'Intangibles (Software)',
        'Cuentas por Pagar Diversas',
        'Amortización de Intangibles',
        'Depreciación y Amortización Acumuladas',
        'Gastos Administrativos',
      ],
      excelAssetPath: 'assets/excel/ejercicios/nic38_intangibles.xlsx',
    ),

    Exercise(
      title: 'NIC 40 - Propiedades de Inversión',
      description:
          'Se adquiere un terreno por S/ 260,100 con fines de obtener plusvalía. Posteriormente, su valor de tasación aumenta a S/ 300,000. El ejercicio consiste en registrar la medición inicial y el posterior ajuste a valor razonable con su ganancia.',
      category: 'NIC',
      difficulty: 'Intermedio',
      accounts: [
        'Propiedades de Inversión',
        'Cuentas por Pagar Diversas',
        'Ganancia por Medición de Activos no Financieros',
        'Efectivo y Equivalente de Efectivo',
      ],
      excelAssetPath: 'assets/excel/ejercicios/nic40_propiedad_inversion.xlsx',
    ),

    Exercise(
      title: 'NIC 41 - Agricultura',
      description:
          'Medición de activos biológicos (cultivo de caña de azúcar). Se debe calcular el valor razonable de la producción esperada (872,400 toneladas a S/ 168 c/u) y descontarlo a valor presente usando una tasa del 12% para registrarlo en libros.',
      category: 'NIC',
      difficulty: 'Avanzado',
      accounts: [
        'Activos Biológicos',
        'Ganancia por Medición de Activos no Financieros',
      ],
      excelAssetPath: 'assets/excel/ejercicios/nic41_agricultura.xlsx',
    ),

    Exercise(
      title: 'NIIF 5 - Activos para la Venta',
      description:
          'Una máquina con costo de S/ 150,000 y depreciación acumulada de S/ 22,000 se clasifica como mantenida para la venta. El ejercicio cubre la reclasificación, medición a valor razonable, reversión de pérdidas y el registro final de la venta.',
      category: 'NIIF',
      difficulty: 'Avanzado',
      accounts: [
        'Activos no Corrientes Mantenidos para la Venta',
        'Propiedad, Planta y Equipo',
        'Pérdida por Medición de Activos',
        'Otros Ingresos de Gestión',
        'Costo Neto de Enajenación',
      ],
      excelAssetPath:
          'assets/excel/ejercicios/niif5_activos_no_corrientes_mantenidos.xlsx',
    ),

    Exercise(
      title: 'NIIF 15 - Ingresos de Clientes',
      description:
          'Caso de una exportación de 30 toneladas de azúcar a Colombia. El ejercicio se centra en identificar el momento de reconocimiento del ingreso (al emitir certificado de conformidad) y registrar la venta, el costo de venta y el cobro.',
      category: 'NIIF',
      difficulty: 'Intermedio',
      accounts: [
        'Cuentas por Cobrar Comerciales',
        'Ventas',
        'Costo de Ventas',
        'Mercadería',
        'Efectivo y Equivalente de Efectivo',
      ],
      excelAssetPath:
          'assets/excel/ejercicios/niif15_ingresos_activdades_ordinarias.xlsx',
    ),

    Exercise(
      title: 'NIIF 16 - Arrendamientos',
      description:
          'La empresa adquiere un equipo cosechador bajo un contrato de arrendamiento financiero (leasing). El ejercicio implica calcular el valor del activo por derecho de uso, la obligación financiera, y registrar las cuotas, intereses y depreciación.',
      category: 'NIIF',
      difficulty: 'Avanzado',
      accounts: [
        'Activos por Derecho de Uso',
        'Obligaciones Financieras',
        'Gastos Financieros',
        'Depreciación de Activos por Derecho de Uso',
        'Efectivo y Equivalentes de Efectivo',
      ],
      // Nota: Se ha asignado un nombre de archivo lógico para este ejercicio.
      excelAssetPath: 'assets/excel/ejercicios/niif16_arrendamientos.xlsx',
    ),
  ];
}
