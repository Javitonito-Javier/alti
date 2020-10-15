import 'dart:convert';

Empleado welcomeFromJson(String str) => Empleado.fromJson(json.decode(str));

String EmpleadoToJson(Empleado data) => json.encode(data.toJson());

class Empleado {
  Empleado({
    this.idEmpleado  = "0318199100175",
    this.nombreEmpleado = "Anzanito",
    this.direcEmpleado = "algun lugar",
    this.cargoEmpleado,
    this.sucursalesIdSucursales,
    this.fechaEmpleado,
  });

  Empleado.db(
    this.idEmpleado,
    this.nombreEmpleado,
    this.direcEmpleado,
    this.cargoEmpleado,
    this.sucursalesIdSucursales,
    this.fechaEmpleado,
  );

  String idEmpleado;
  String nombreEmpleado;
  String direcEmpleado;
  String cargoEmpleado ;
  String sucursalesIdSucursales;
  DateTime fechaEmpleado;

  factory Empleado.fromJson(Map<String, dynamic> json) => Empleado(
    idEmpleado    : json["idEmpleado"],
    nombreEmpleado: json["nombreEmpleado"],
    direcEmpleado : json["direcEmpleado"],
    cargoEmpleado : json["cargoEmpleado"],
    sucursalesIdSucursales: json["sucursales_idSucursales"],
    fechaEmpleado: json["fechaEmpleado"],
  );

  Map<String, dynamic> toJson() => {
    "idEmpleado"     : idEmpleado,
    "nombreEmpleado" : nombreEmpleado,
    "direcEmpleado"  : direcEmpleado,
    "cargoEmpleado"  : cargoEmpleado,
    "sucursales_idSucursales": sucursalesIdSucursales,
    "fechaEmpleado"  : fechaEmpleado,
  };
}