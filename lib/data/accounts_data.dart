import '../models/account_info.dart';

class AccountsData {
  static List<AccountInfo> accounts = [
    AccountInfo(
      code: '10',
      name: 'Efectivo y equivalentes de efectivo',
      description: 'Dinero en caja, bancos o fondos fáciles de usar.',
      example:
          'Se utiliza al registrar dinero en caja o depósitos bancarios. Por ejemplo, al recibir un pago en efectivo de un cliente.',
    ),
    AccountInfo(
      code: '11',
      name: 'Inversiones financieras',
      description:
          'Dinero invertido en acciones o bonos para obtener ganancias.',
      example:
          'Para registrar inversiones a corto plazo. Por ejemplo, al comprar certificados de depósito a término.',
    ),
    AccountInfo(
      code: '12',
      name: 'Cuentas por cobrar comerciales – Terceros',
      description: 'Clientes que deben dinero por ventas a crédito.',
      example:
          'Se usa para ventas a crédito. Por ejemplo, al vender mercancía que se pagará en 30 días.',
    ),
    AccountInfo(
      code: '13',
      name: 'Cuentas por cobrar comerciales – Relacionadas',
      description: 'Empresas vinculadas (como sucursales) que deben dinero.',
      example:
          'Se utiliza para registrar deudas de empresas del mismo grupo. Por ejemplo, cuando una sucursal debe dinero a la central.',
    ),
    AccountInfo(
      code: '14',
      name: 'Cuentas por cobrar al personal, socios, directores y gerentes',
      description: 'Dinero prestado a empleados, socios o gerentes.',
      example:
          'Para registrar préstamos hechos a personal clave. Por ejemplo, al adelantar un sueldo a un empleado.',
    ),
    AccountInfo(
      code: '15',
      name: '(Cuenta no asignada en el PCGE actual)',
      description:
          'Cuenta sin asignación en el Plan Contable General Empresarial actual.',
      example:
          'Esta cuenta no tiene un uso específico definido en la actualidad.',
    ),
    AccountInfo(
      code: '16',
      name: 'Cuentas por cobrar diversas – Terceros',
      description:
          'Deudas de otras personas o empresas no relacionadas directamente con ventas.',
      example:
          'Para registrar deudas variadas con terceros. Por ejemplo, al cobrar un préstamo a una empresa no cliente.',
    ),
    AccountInfo(
      code: '17',
      name: 'Cuentas por cobrar diversas – Relacionadas',
      description: 'Empresas vinculadas que deben por otros motivos.',
      example:
          'Para registrar otras deudas con empresas vinculadas. Por ejemplo, cuando una empresa relacionada debe por un servicio compartido.',
    ),
    AccountInfo(
      code: '18',
      name: 'Servicios y otros contratados por anticipado',
      description: 'Gastos pagados por adelantado (ej. seguros, alquiler).',
      example:
          'Se usa para registrar gastos pagados antes de su consumo. Por ejemplo, al pagar el alquiler de tres meses por adelantado.',
    ),
    AccountInfo(
      code: '19',
      name: 'Estimación de cuentas de cobranza dudosa',
      description: 'Previsión por cuentas que tal vez no se cobren.',
      example:
          'Para estimar posibles pérdidas por deudas incobrables. Por ejemplo, al considerar que un cliente moroso no pagará su deuda.',
    ),
    AccountInfo(
      code: '20',
      name: 'Mercaderías',
      description: 'Productos comprados para revender.',
      example:
          'Se utiliza para registrar la compra de productos destinados a la venta. Por ejemplo, al adquirir un lote de ropa para la tienda.',
    ),
    AccountInfo(
      code: '21',
      name: 'Productos terminados',
      description: 'Bienes ya fabricados listos para la venta.',
      example:
          'Para registrar productos que han completado su proceso de fabricación. Por ejemplo, al terminar la producción de muebles.',
    ),
    AccountInfo(
      code: '22',
      name: 'Subproductos, desechos y desperdicios',
      description: 'Restos de producción que pueden tener valor.',
      example:
          'Se usa para valorar los materiales residuales con potencial de venta. Por ejemplo, al acumular recortes de madera que pueden venderse.',
    ),
    AccountInfo(
      code: '23',
      name: 'Productos en proceso',
      description: 'Productos que aún no están terminados.',
      example:
          'Para registrar bienes que se encuentran en alguna etapa de fabricación. Por ejemplo, una línea de ensamblaje de autos a medio terminar.',
    ),
    AccountInfo(
      code: '24',
      name: 'Materias primas',
      description: 'Material principal para fabricar productos.',
      example:
          'Se utiliza para registrar los materiales básicos para la producción. Por ejemplo, al comprar tela para confeccionar ropa.',
    ),
    AccountInfo(
      code: '25',
      name: 'Materiales auxiliares, suministros y repuestos',
      description: 'Insumos menores o repuestos para producción.',
      example:
          'Para registrar elementos secundarios en la producción o mantenimiento. Por ejemplo, al adquirir tornillos o lubricantes para maquinaria.',
    ),
    AccountInfo(
      code: '26',
      name: 'Envases y embalajes',
      description: 'Material para empacar productos.',
      example:
          'Se usa para registrar materiales para proteger y presentar productos. Por ejemplo, al comprar cajas de cartón para empaquetar mercadería.',
    ),
    AccountInfo(
      code: '27',
      name: 'Activos no corrientes mantenidos para la venta',
      description: 'Bienes que la empresa planea vender (ej. un terreno).',
      example:
          'Para reclasificar activos que antes se usaban y ahora se venderán. Por ejemplo, un terreno que la empresa ya no usará y ha puesto en venta.',
    ),
    AccountInfo(
      code: '28',
      name: 'Existencias por recibir',
      description: 'Productos comprados pero aún no entregados.',
      example:
          'Se utiliza para registrar mercadería comprada que está en tránsito. Por ejemplo, un pedido de productos que aún no ha llegado al almacén.',
    ),
    AccountInfo(
      code: '29',
      name: 'Desvalorización de existencias',
      description: 'Ajuste por productos que bajaron de valor.',
      example:
          'Para reconocer la pérdida de valor de inventarios. Por ejemplo, si productos perecederos se dañan y su valor disminuye.',
    ),
    AccountInfo(
      code: '30',
      name: 'Inversiones mobiliarias',
      description: 'Inversiones a largo plazo como acciones o bonos.',
      example:
          'Se usa para registrar inversiones de más de un año. Por ejemplo, al comprar acciones de otra empresa con fines estratégicos a largo plazo.',
    ),
    AccountInfo(
      code: '31',
      name: 'Inversiones inmobiliarias',
      description: 'Terrenos o edificios comprados para alquilar o vender.',
      example:
          'Para registrar propiedades con el fin de obtener rentas o plusvalía. Por ejemplo, al adquirir un edificio para alquilar oficinas.',
    ),
    AccountInfo(
      code: '32',
      name: 'Activos adquiridos en arrendamiento financiero',
      description: 'Bienes comprados en leasing (como autos o equipos).',
      example:
          'Se utiliza para registrar activos obtenidos bajo un contrato de leasing financiero. Por ejemplo, un vehículo que se está pagando mediante cuotas de arrendamiento financiero.',
    ),
    AccountInfo(
      code: '33',
      name: 'Inmuebles, maquinaria y equipo',
      description: 'Bienes usados en la empresa: oficinas, computadoras, etc.',
      example:
          'Para registrar activos tangibles de uso prolongado. Por ejemplo, al comprar nuevas computadoras para la oficina o una máquina para la fábrica.',
    ),
    AccountInfo(
      code: '34',
      name: 'Intangibles',
      description: 'Cosas sin forma física como marcas o software.',
      example:
          'Se usa para registrar activos no físicos que generan valor. Por ejemplo, al adquirir los derechos de una patente o desarrollar un software propio.',
    ),
    AccountInfo(
      code: '35',
      name: 'Activos biológicos',
      description: 'Plantas o animales usados en producción.',
      example:
          'Para registrar seres vivos utilizados en actividades agrícolas o ganaderas. Por ejemplo, un rebaño de ovejas o una plantación de café.',
    ),
    AccountInfo(
      code: '36',
      name: 'Desvalorización de activo inmovilizado',
      description: 'Ajuste por pérdida de valor de estos bienes.',
      example:
          'Para registrar la disminución de valor de un activo fijo. Por ejemplo, si un inmueble pierde valor de mercado debido a una nueva regulación.',
    ),
    AccountInfo(
      code: '37',
      name: 'Activo diferido',
      description: 'Gastos que se registran pero se usan en el futuro.',
      example:
          'Se utiliza para gastos que se reconocerán en períodos futuros. Por ejemplo, al pagar una campaña publicitaria que durará varios años.',
    ),
    AccountInfo(
      code: '38',
      name: 'Otros activos',
      description: 'Bienes especiales como obras de arte o joyas.',
      example:
          'Para registrar activos que no encajan en otras categorías. Por ejemplo, obras de arte que forman parte del patrimonio de la empresa.',
    ),
    AccountInfo(
      code: '39',
      name: 'Depreciación, amortización y agotamiento acumulados',
      description:
          'Reducción del valor de bienes por el uso o paso del tiempo.',
      example:
          'Para registrar la pérdida de valor de los activos fijos por su uso. Por ejemplo, el desgaste anual de una máquina o un edificio.',
    ),
    AccountInfo(
      code: '40',
      name: 'Tributos, contraprestaciones y aportes al sistema',
      description: 'Impuestos y aportes por pagar (SUNAT, AFP, etc.).',
      example:
          'Se usa para registrar las obligaciones con el Estado. Por ejemplo, el IGV pendiente de pago o los aportes a la AFP de los empleados.',
    ),
    AccountInfo(
      code: '41',
      name: 'Remuneraciones y participaciones por pagar',
      description: 'Sueldos y beneficios pendientes de pago.',
      example:
          'Para registrar las deudas con los empleados por su trabajo. Por ejemplo, la nómina de sueldos al final del mes antes de ser pagada.',
    ),
    AccountInfo(
      code: '42',
      name: 'Cuentas por pagar comerciales – Terceros',
      description: 'Deudas con proveedores.',
      example:
          'Se utiliza para registrar compras a crédito a proveedores externos. Por ejemplo, la deuda por la compra de insumos a un proveedor.',
    ),
    AccountInfo(
      code: '43',
      name: 'Cuentas por pagar comerciales – Relacionadas',
      description: 'Deudas con empresas vinculadas.',
      example:
          'Para registrar deudas con empresas del mismo grupo. Por ejemplo, si la empresa debe a una de sus subsidiarias por una compra.',
    ),
    AccountInfo(
      code: '44',
      name: 'Cuentas por pagar a socios, directores y gerentes',
      description: 'Deudas con personas clave de la empresa.',
      example:
          'Se usa para registrar préstamos o pagos pendientes a la dirección de la empresa. Por ejemplo, honorarios pendientes de pago a un director.',
    ),
    AccountInfo(
      code: '45',
      name: 'Obligaciones financieras',
      description: 'Préstamos con bancos u otras instituciones.',
      example:
          'Para registrar las deudas con entidades financieras. Por ejemplo, un préstamo bancario a largo plazo.',
    ),
    AccountInfo(
      code: '46',
      name: 'Cuentas por pagar diversas – Terceros',
      description: 'Otras deudas no comerciales con terceros.',
      example:
          'Se utiliza para registrar deudas variadas no relacionadas con el giro principal. Por ejemplo, una deuda por la compra de un activo fijo a un particular.',
    ),
    AccountInfo(
      code: '47',
      name: 'Cuentas por pagar diversas – Relacionadas',
      description: 'Otras deudas con empresas relacionadas.',
      example:
          'Para registrar otras deudas con empresas del mismo grupo por conceptos no comerciales. Por ejemplo, un pago pendiente por un servicio compartido con una empresa afiliada.',
    ),
    AccountInfo(
      code: '48',
      name: 'Provisiones',
      description: 'Reservas para pagos futuros inciertos (ej. juicios).',
      example:
          'Se usa para apartar fondos para gastos futuros probables pero inciertos. Por ejemplo, una provisión para una posible multa o juicio.',
    ),
    AccountInfo(
      code: '49',
      name: 'Pasivo diferido',
      description: 'Ingresos cobrados por adelantado (ej. alquiler futuro).',
      example:
          'Para registrar ingresos que ya se cobraron pero que corresponden a servicios futuros. Por ejemplo, el cobro por adelantado de un año de alquiler.',
    ),
    AccountInfo(
      code: '50',
      name: 'Capital',
      description: 'Aportes de dinero hechos por los socios.',
      example:
          'Se utiliza para registrar la inversión inicial o aportes de los dueños. Por ejemplo, el dinero o bienes que los socios aportan al iniciar la empresa.',
    ),
    AccountInfo(
      code: '51',
      name: 'Acciones de inversión',
      description: 'Participaciones sin derecho a voto.',
      example:
          'Para registrar la emisión de acciones que no otorgan control. Por ejemplo, acciones preferenciales emitidas a inversores.',
    ),
    AccountInfo(
      code: '52',
      name: 'Capital adicional',
      description: 'Aportes extra de los socios.',
      example:
          'Se usa para registrar aportes adicionales de los socios más allá del capital social. Por ejemplo, un socio que inyecta más dinero para expandir el negocio.',
    ),
    AccountInfo(
      code: '53',
      name: '(Cuenta no asignada)',
      description: 'Cuenta sin asignación específica.',
      example:
          'Esta cuenta no tiene un uso definido en el Plan Contable actual.',
    ),
    AccountInfo(
      code: '54',
      name: '(Cuenta no asignada)',
      description: 'Cuenta sin asignación específica.',
      example:
          'Esta cuenta no tiene un uso definido en el Plan Contable actual.',
    ),
    AccountInfo(
      code: '55',
      name: '(Cuenta no asignada)',
      description: 'Cuenta sin asignación específica.',
      example:
          'Esta cuenta no tiene un uso definido en el Plan Contable actual.',
    ),
    AccountInfo(
      code: '56',
      name: 'Resultados no realizados',
      description: 'Ganancias aún no cobradas (como por revalorización).',
      example:
          'Para registrar ganancias que existen en el papel pero no en efectivo. Por ejemplo, una ganancia por la revalorización de una propiedad que aún no se ha vendido.',
    ),
    AccountInfo(
      code: '57',
      name: 'Excedente de revaluación',
      description: 'Aumento del valor de los bienes revaluados.',
      example:
          'Se utiliza para registrar el incremento de valor de activos tras una revaluación. Por ejemplo, si un edificio es tasado por un valor mayor al original.',
    ),
    AccountInfo(
      code: '58',
      name: 'Reservas',
      description: 'Ganancias guardadas para protección o reinversión.',
      example:
          'Para apartar parte de las ganancias para fines específicos. Por ejemplo, una reserva legal obligatoria o una reserva para futuras expansiones.',
    ),
    AccountInfo(
      code: '59',
      name: 'Resultados acumulados',
      description: 'Ganancias o pérdidas de años anteriores.',
      example:
          'Se usa para registrar las ganancias o pérdidas netas de ejercicios anteriores que no se han distribuido. Por ejemplo, las utilidades retenidas de años pasados.',
    ),
    AccountInfo(
      code: '60',
      name: 'Compras',
      description: 'Compra de bienes para vender o fabricar.',
      example:
          'Se utiliza para registrar la adquisición de mercaderías o materias primas. Por ejemplo, la compra de inventario para la venta.',
    ),
    AccountInfo(
      code: '61',
      name: 'Variación de existencias',
      description: 'Cambio en la cantidad de productos almacenados.',
      example:
          'Para ajustar el valor del inventario por la producción o consumo. Por ejemplo, al registrar la disminución de materias primas usadas en producción.',
    ),
    AccountInfo(
      code: '62',
      name: 'Gastos de personal',
      description: 'Sueldos, beneficios, seguros del personal.',
      example:
          'Se usa para registrar todos los gastos relacionados con los empleados. Por ejemplo, el pago de sueldos, gratificaciones o seguros de salud.',
    ),
    AccountInfo(
      code: '63',
      name: 'Servicios prestados por terceros',
      description: 'Pagos por servicios como limpieza, seguridad, etc.',
      example:
          'Para registrar los gastos por servicios externos. Por ejemplo, el pago de la factura de luz, agua o los honorarios de un asesor.',
    ),
    AccountInfo(
      code: '64',
      name: 'Gastos por tributos',
      description: 'IGV, impuesto a la renta y otros pagos al Estado.',
      example:
          'Se utiliza para registrar los impuestos que son un gasto para la empresa. Por ejemplo, el pago del impuesto a la renta o arbitrios municipales.',
    ),
    AccountInfo(
      code: '65',
      name: 'Otros gastos de gestión',
      description: 'Gastos variados de operación.',
      example:
          'Para registrar gastos diversos que no encajan en otras categorías. Por ejemplo, multas, donaciones o gastos de representación.',
    ),
    AccountInfo(
      code: '66',
      name: 'Pérdida por medición de activos',
      description: 'Reducción del valor de activos por reevaluación.',
      example:
          'Se usa para registrar la disminución del valor de un activo tras una valoración. Por ejemplo, si una inversión financiera pierde valor en el mercado.',
    ),
    AccountInfo(
      code: '67',
      name: 'Gastos financieros',
      description: 'Intereses y comisiones por préstamos.',
      example:
          'Para registrar los costos asociados a la financiación. Por ejemplo, los intereses pagados por un préstamo bancario.',
    ),
    AccountInfo(
      code: '68',
      name: 'Valuación y deterioro de activos y provisiones',
      description: 'Ajustes por baja de valor de bienes o provisiones.',
      example:
          'Se utiliza para registrar pérdidas por el deterioro de activos o creación de provisiones. Por ejemplo, la depreciación de un activo o la estimación de una cuenta incobrable.',
    ),
    AccountInfo(
      code: '69',
      name: 'Costo de ventas',
      description: 'Costo de producir lo que se ha vendido.',
      example:
          'Para registrar el costo directo de los bienes o servicios vendidos. Por ejemplo, el costo de adquisición de la mercadería que salió del almacén por una venta.',
    ),
    AccountInfo(
      code: '70',
      name: 'Ventas',
      description: 'Ingresos por la venta de productos o servicios.',
      example:
          'Se utiliza para registrar los ingresos por la actividad principal de la empresa. Por ejemplo, al vender productos terminados a un cliente.',
    ),
    AccountInfo(
      code: '71',
      name: 'Variación de producción almacenada',
      description: 'Cambios en el valor de lo producido y almacenado.',
      example:
          'Para ajustar los ingresos por la producción que no se ha vendido. Por ejemplo, si la producción final de productos terminados es mayor al inventario inicial.',
    ),
    AccountInfo(
      code: '72',
      name: 'Producción de activo inmovilizado',
      description: 'Valor generado al producir sus propios activos.',
      example:
          'Se usa cuando la empresa construye o crea sus propios activos fijos. Por ejemplo, si la empresa construye un nuevo almacén con sus propios recursos.',
    ),
    AccountInfo(
      code: '73',
      name: 'Descuentos obtenidos',
      description: 'Descuentos que recibe la empresa al comprar.',
      example:
          'Para registrar los descuentos recibidos de proveedores. Por ejemplo, si se obtiene un descuento por pronto pago al comprar mercadería.',
    ),
    AccountInfo(
      code: '74',
      name: 'Descuentos concedidos',
      description: 'Descuentos que da la empresa al vender.',
      example:
          'Se utiliza para registrar los descuentos otorgados a los clientes. Por ejemplo, si se ofrece un descuento por volumen de compra.',
    ),
    AccountInfo(
      code: '75',
      name: 'Otros ingresos de gestión',
      description: 'Ingresos por alquileres, servicios, etc.',
      example:
          'Para registrar ingresos secundarios o no operativos. Por ejemplo, el ingreso por el alquiler de un local que no se usa.',
    ),
    AccountInfo(
      code: '76',
      name: 'Ganancia por medición de activos',
      description: 'Aumento de valor de bienes tras revalorización.',
      example:
          'Se usa para registrar la ganancia por la revalorización de un activo. Por ejemplo, si una inversión en acciones aumenta de valor en el mercado.',
    ),
    AccountInfo(
      code: '77',
      name: 'Ingresos financieros',
      description: 'Intereses o dividendos recibidos.',
      example:
          'Para registrar los ingresos provenientes de inversiones o préstamos. Por ejemplo, los intereses ganados en una cuenta bancaria o dividendos de acciones.',
    ),
    AccountInfo(
      code: '78',
      name: 'Cargas cubiertas por provisiones',
      description: 'Gastos cubiertos con provisiones anteriores.',
      example:
          'Se utiliza cuando un gasto que ya se había previsto se ejecuta. Por ejemplo, al pagar una multa para la que ya se había creado una provisión.',
    ),
    AccountInfo(
      code: '79',
      name: 'Cargas imputables a costos y gastos',
      description: 'Costos transferidos a otras cuentas.',
      example:
          'Para reclasificar o distribuir gastos a diferentes centros de costo. Por ejemplo, transferir una parte de los gastos de administración a gastos de ventas.',
    ),
    AccountInfo(
      code: '80',
      name: 'Margen comercial',
      description: 'Diferencia entre ventas y compras.',
      example:
          'Se utiliza para calcular la rentabilidad bruta de la venta de bienes. Por ejemplo, la diferencia entre lo que se vende y lo que se compró de mercadería.',
    ),
    AccountInfo(
      code: '81',
      name: 'Producción del ejercicio',
      description: 'Valor total producido en el año.',
      example:
          'Para determinar el valor de toda la producción realizada en el período. Por ejemplo, el valor total de los bienes manufacturados en un año.',
    ),
    AccountInfo(
      code: '82',
      name: 'Valor agregado',
      description: 'Valor añadido por la empresa.',
      example:
          'Se usa para medir la riqueza creada por la empresa. Por ejemplo, la diferencia entre el valor de la producción y el costo de los insumos externos.',
    ),
    AccountInfo(
      code: '83',
      name: 'Excedente bruto de explotación',
      description: 'Utilidad antes de gastos generales.',
      example:
          'Para conocer la ganancia operativa antes de impuestos y depreciaciones. Por ejemplo, los ingresos por ventas menos los costos de producción.',
    ),
    AccountInfo(
      code: '84',
      name: 'Resultado de explotación',
      description: 'Ganancia o pérdida operativa.',
      example:
          'Se utiliza para determinar la rentabilidad de las operaciones principales. Por ejemplo, la ganancia o pérdida generada por la actividad diaria del negocio.',
    ),
    AccountInfo(
      code: '85',
      name: 'Resultado antes de participaciones e impuestos',
      description: 'Ganancia antes de impuestos.',
      example:
          'Para conocer la utilidad antes de distribuir ganancias y pagar impuestos. Por ejemplo, la ganancia final antes de considerar el Impuesto a la Renta.',
    ),
    AccountInfo(
      code: '86',
      name: '(Cuenta no detallada)',
      description:
          'Esta cuenta no tiene un detalle específico en el documento.',
      example:
          'Esta cuenta no tiene un uso definido o no fue detallada en la información proporcionada.',
    ),
    AccountInfo(
      code: '87',
      name: 'Participaciones de los trabajadores',
      description: 'Parte de la utilidad que se reparte a los empleados.',
      example:
          'Se usa para registrar la porción de las utilidades que corresponde a los trabajadores. Por ejemplo, el cálculo del porcentaje de ganancias a distribuir entre los empleados.',
    ),
    AccountInfo(
      code: '88',
      name: 'Impuesto a la renta',
      description: 'Impuesto sobre la ganancia del año.',
      example:
          'Para registrar la obligación fiscal sobre las utilidades obtenidas. Por ejemplo, el cálculo del impuesto que se debe pagar al fisco por las ganancias anuales.',
    ),
    AccountInfo(
      code: '89',
      name: 'Determinación del resultado del ejercicio',
      description: 'Resultado final: ganancia o pérdida.',
      example:
          'Se utiliza para cerrar las cuentas de ingresos y gastos y obtener el resultado final. Por ejemplo, el cálculo final que indica si la empresa tuvo una ganancia o una pérdida en el año.',
    ),
    AccountInfo(
      code: '90 al 99',
      name: 'Costos de producción y distribución',
      description:
          'Las empresas crean estas cuentas según su actividad (ej. costo de ventas, administración, distribución).',
      example:
          'Estas cuentas son flexibles y se usan para agrupar costos específicos de la empresa. Por ejemplo, una empresa de manufactura podría tener una cuenta 92 para "Gastos de Producción".',
    ),
    AccountInfo(
      code: '00 - 09',
      name: 'Cuentas de orden',
      description:
          'Registra bienes o compromisos fuera del balance (como garantías entregadas o recibidas).',
      example:
          'Se usan para controlar elementos que no afectan directamente el balance, pero son importantes. Por ejemplo, el registro de una garantía recibida por un cliente.',
    ),
  ];
}
