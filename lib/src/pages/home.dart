
import 'package:altiplanov2/src/models/empleado.dart';
import 'package:altiplanov2/src/models/mysql.dart';
import 'package:altiplanov2/src/utils/utils.dart' as utils;
import 'package:altiplanov2/src/widgets/dropDownbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmpleadosForm extends StatefulWidget {
  EmpleadosForm({Key key}) : super(key: key);
  @override
  _EmpleadosState createState() => new _EmpleadosState();
}

class _EmpleadosState extends State<EmpleadosForm> {
  // identificador unico del formulario
  final formKey = GlobalKey<FormState>();
  Empleado empleado = new Empleado();
  //DropdownMenuSucursal sucurs = new DropdownMenuSucursal();

  //crear una instancia de Mysql
  var db = new Mysql();

  //Lista para el combobox de anzanito
  List cargo = ["Admin","facturador"];
  List<DropdownMenuItem<String>> dropDownMenuItems;
  String currentCargo;
  //
  List sucursales = ["Siguatepeque","Comayagua","La Esperanza"];
  List<DropdownMenuItem<String>> _dropDownMenuItemss;
  String currentSucursal;
  List<DropdownMenuItem<String>> getAlgoo(){

    List<DropdownMenuItem<String>> itemss = new List();
    // ciclo para mostrar en el dropDownMenu un listado
    for (String sucursal in sucursales){
      //agregar cada vez que hace el  cicho
      itemss.add(new DropdownMenuItem(
          value: sucursal,
          child: new Text(sucursal)
      ));
    }
    return itemss;}

  @override
  void initState() {
    _dropDownMenuItemss = getAlgoo();
    currentSucursal = _dropDownMenuItemss[0].value;
    dropDownMenuItems = getAlgo();
    currentCargo = dropDownMenuItems[0].value;
    super.initState();
  }
  List<DropdownMenuItem<String>> getAlgo(){

    List<DropdownMenuItem<String>> items = new List();
    for (String carguito in cargo){
      //agregar cada vez que hace el  cicho
      items.add(new DropdownMenuItem(
          value: carguito,
          child: new Text(carguito)
      ));
    }
    return items;
  }

  //aqui termina el metodo


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.greenAccent,
      body: SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.all(40.0),
        height: Get.height * .85,
        padding: EdgeInsets.all(100.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0),color: Colors.lightBlue[600],),

          child: Row(children: [
            Container(margin: EdgeInsets.all(10.0),height:Get.height * .8,decoration: BoxDecoration(borderRadius: BorderRadius.circular(25.0)),child: Column(children: [Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 80.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Text(
                      "Registrar Empleado",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    child: Text(
                      "Toma unos segundos crear la cuenta",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  _saveFormulario(),
                  RaisedButton.icon(
                    color: Colors.lightBlue,elevation: 25.0,
                    icon: Icon(Icons.arrow_back_sharp),
                    onPressed: () => Get.toNamed("/"),
                    label: Text(
                      "Salir",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),],),)
            ,
            Container(width: Get.width *.1,),// SEGUNDO CONTEINER
            SingleChildScrollView(dragStartBehavior: DragStartBehavior.start,
              child: Container(width: Get.width *.35,
                  height: Get.height * 25.0,
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),color: Colors.cyan[50]),
                  child:Card(elevation: 20.0,shadowColor: Colors.greenAccent,child: Form(key: formKey,child:
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      //SafeArea(child: SizedBox(height: 80.0,),),
                      _idEmpleado(),
                      //SizedBox(height: 15.00,),
                      _nombreEmpleado(),
                      //SizedBox(height: 15.00,),
                      _direcEmpleado(),
                      //SizedBox(child: Drop),

                      _fechaEmpleado(),
                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[Container(padding:EdgeInsets.only(top: 30.0),child: Text('Eligir Cargo', style: TextStyle(fontSize: 16.0),),),
                          SafeArea(child: SizedBox(width: Get.width*0.05,),),
                          Container(margin: EdgeInsets.only(top: 1.0,bottom: 20.0),padding: EdgeInsets.only(top: 15.0),width: Get.width*.1,alignment: Alignment.centerLeft,decoration: BoxDecoration(color:Colors.white),child: DropdownButton(
                          value: currentCargo,
                          items: dropDownMenuItems,
                          onChanged: changeDropDownItem,
                        ),),]
                      ),
                      // Widget dropDownbutton
                      Container( height: 2.0,decoration: BoxDecoration(color: Colors.deepPurple[200], shape: BoxShape.rectangle),),
                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[Container(padding:EdgeInsets.only(top: 30.0),child: Text('Eligir Sucursal', style: TextStyle(fontSize: 16.0),),),
                            SafeArea(child: SizedBox(width: Get.width*0.03,),),
                            Container(margin: EdgeInsets.only(top: 1.0,bottom: 20.0),padding: EdgeInsets.only(top: 15.0),width: Get.width*.1,alignment: Alignment.centerLeft,decoration: BoxDecoration(color:Colors.white),
                              child: DropdownButton(
                                value: currentSucursal,
                                items: _dropDownMenuItemss,
                                onChanged: changeDropDownItems,
                              ),),]
                      ),
                      Container(height: 2.0,decoration: BoxDecoration(color: Colors.deepPurple[200], shape: BoxShape.rectangle),),
                      SafeArea(child: SizedBox(height: Get.height*.5,),)
                    ],
                  ),
                  ))),
            )],)
      ),
    ),);

    //Widget
  }
  void changeDropDownItems(String selectedSucursal){
    setState(() {
      currentSucursal = selectedSucursal;
    });
  }

  Widget _saveFormulario(){
    return RaisedButton.icon(elevation: 25.0,
      color: Colors.lightBlue[400],
      onPressed: _submit,
      label: Text("Registrar"),
      icon: Icon(Icons.save),


    );


  }
  // para validar el form con el boton
  void _submit(){
    if(!formKey.currentState.validate()) return;
    print ("todo ok");
    //validar el save en todos los TextFOrmField

    ///
    //insertEmpleado(empleado);
    ///
    formKey.currentState.save();
    print (empleado.idEmpleado);
    print (empleado.nombreEmpleado);
    print (empleado.direcEmpleado);
    print (currentCargo);
    print (currentSucursal);
    //var
    //if(formKey.currentState.validate()){
//
    //}

  }

  Widget _idEmpleado(){
    return TextFormField(decoration: InputDecoration(fillColor: Colors.blue[50],labelText: 'Ingrese Num Identidad',contentPadding: EdgeInsets.only(left: 5.0, right: 5.0)),
        initialValue: empleado.idEmpleado,
        keyboardType: TextInputType.numberWithOptions(signed: true),
      onSaved: (valor)=> empleado.idEmpleado = valor,
      validator: (value){

          if( utils.isNumeric(value )) {
            return null;

          } else {
            return "Ingrese bien su numero de identidad sin espacion";
          }
        }

    );
  }
  Widget _nombreEmpleado(){
    return TextFormField(decoration: InputDecoration(fillColor: Colors.blue[50],labelText: 'Nombre del empleado',contentPadding: EdgeInsets.only(left: 5.0, right: 5.0)),
      initialValue: empleado.nombreEmpleado,
      onSaved: ( valor ) => empleado.nombreEmpleado = valor,
      validator: (value){
        if(value.length < 5){
          return 'Ingrese bien el nombre';
        }else{
          return null;
        }
     },

    );
  }
  Widget _direcEmpleado(){
    return TextFormField(expands: false,decoration: InputDecoration(fillColor: Colors.blue[50],labelText: 'Direccion',contentPadding: EdgeInsets.only(left: 5.0, right: 5.0)),
      initialValue: empleado.direcEmpleado,
      onSaved: (valor)=> empleado.direcEmpleado = valor,
      keyboardType: TextInputType.streetAddress,
      validator: (value){
        if(value.length < 8){
          return 'Ingrese bien la direccioc';
        }else{
          return null;
        }
      },
    );
  }
  Widget _fechaEmpleado(){
    DateTime _time= new DateTime.now();
    String _timeActual = "${_time.day}/${_time.month}/${_time.year}";
    return TextFormField(decoration: InputDecoration(fillColor: Colors.blue[50],labelText: 'Fecha que fue creado',contentPadding: EdgeInsets.only(left: 5.0, right: 5.0)),
      initialValue: _timeActual,
      //onSaved: (valor)=> empleado.fechaEmpleado = "{_time.day}/{_time.month}/${_time.year}",
      enabled: false,
    );
  }

  void changeDropDownItem(String selectedCargo){
    setState(() {
      currentCargo = selectedCargo;
    });

    // insertar empleado
    Future<void> insertEmpleado(Empleado empleado) async {
        db.getConnection().then((conn) {
        String sql =
            'insert into altiplano.empleados (idEmpleado, NomEmpleado, DirecEmpleado, CargoEmpleado, FechaEmpleado, Sucursales_idSucursal) values(?, ?, ?, ?, ?)';
        conn.query(sql, [
          empleado.idEmpleado,
          empleado.nombreEmpleado,
          empleado.direcEmpleado,
          empleado.cargoEmpleado,
          empleado.fechaEmpleado,
          empleado.sucursalesIdSucursales
        ]).then((results) {
          print('Inserted customer succesfullly');
          return ;
        }, onError: (error) {
          print('$error');
        }).whenComplete(() {
          conn.close();
        });
      });
    }
  }
}
