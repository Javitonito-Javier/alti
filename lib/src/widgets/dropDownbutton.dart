import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropdownMenuSucursal extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DropdownMenuSucursal> {
  List sucursales = ["Siguatepeque","Comayagua","La Esperanza"];
  List<DropdownMenuItem<String>> _dropDownMenuItems;
  String currentSucursal;



  List<DropdownMenuItem<String>> getAlgo(){

    List<DropdownMenuItem<String>> items = new List();
  // ciclo para mostrar en el dropDownMenu un listado
    for (String sucursal in sucursales){
  //agregar cada vez que hace el  cicho
      items.add(new DropdownMenuItem(
      value: sucursal,
        child: new Text(sucursal)
     ));
    }
    return items;}
  @override
  void initState() {
    _dropDownMenuItems = getAlgo();
    currentSucursal = _dropDownMenuItems[0].value;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[Container(padding:EdgeInsets.only(top: 30.0),child: Text('Eligir Sucursal', style: TextStyle(fontSize: 16.0),),),
          SafeArea(child: SizedBox(width: Get.width*0.05,),),
          Container(margin: EdgeInsets.only(top: 1.0,bottom: 20.0),padding: EdgeInsets.only(top: 15.0),width: Get.width*.1,alignment: Alignment.centerLeft,decoration: BoxDecoration(color:Colors.white),
            child: DropdownButton(
              value: currentSucursal,
              items: _dropDownMenuItems,
              onChanged: changeDropDownItem,
          ),),]
    );
  }
  void changeDropDownItem(String selectedSucursal){
    setState(() {
      currentSucursal = selectedSucursal;
    });
  }
}
