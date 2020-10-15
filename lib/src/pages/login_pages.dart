//import 'package:altiplanov2/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:flutter/rendering.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: <Widget>[
        _crearFondo(),
        _loginForm(),
        SafeArea(
          child: SizedBox(
            height: 0.2,
          ),
        )
      ]),
    );
  }

  Widget _loginForm() {
    final s = Get.width;

    return SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SafeArea(
            child: Container(
          width: double.infinity,
          height: 180.0,
        )),
        Container(
            width: s * 0.35,
            margin: EdgeInsets.symmetric(vertical: 30.0),
            padding: EdgeInsets.symmetric(vertical: 30.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5.0),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black45,
                      blurRadius: 12.0,
                      offset: Offset(0.0, 5.0),
                      spreadRadius: 10.0),
                ]),
            child: Column(
              children: <Widget>[
                Text(
                  'Login',
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(height: 40.0),
                _crearEmail(),
                SizedBox(height: 15.0),
                _crearPassword(),
                SizedBox(height: 20.0),
                _crearBoton()
              ],
            )),
        Container(
          decoration: BoxDecoration(
              color: Colors.white70,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(6.0)),
          child: Text('Olvido la contraseña?'),
        ),
        SizedBox(
          height: 100.0,
        )
      ],
    ));
  }

  Widget _crearEmail() {
    return Center(
        child: Column(children: <Widget>[
      Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
              textAlign: TextAlign.justify,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText: 'admin',
                labelText: 'Id Cuenta',
                icon: Icon(Icons.person_pin_circle,
                    color: Colors.deepOrange[300]),
                counterText: "ss",
                errorText: "ss",
              ))),
    ]));
  }

  Widget _crearBoton() {
    return RaisedButton(
      visualDensity: VisualDensity.comfortable,
      hoverColor: Colors.green,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 15.0),
        child: Text('Ingresar'),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      elevation: 0.0,
      color: Colors.deepPurple,
      textColor: Colors.white,
      onPressed: () => Get.toNamed("/"),
    );
  }

  Widget _crearPassword() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
            obscureText: true,
            textAlign: TextAlign.justify,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
                labelText: 'Contraseña',
                icon: Icon(Icons.lock_outline,
                    size: 20.0, color: Colors.deepOrange[300]),
                counterText: 'snapshot.data',
                errorText: 'snapshot.error'),
            onChanged: null));
  }

  Widget _crearFondo() {
    final s = Get.height;

    final fondoMorado = Column(children: <Widget>[
      Container(
        height: s * 0.5,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
          Color.fromRGBO(209, 44, 44, 25.0),
          Color.fromRGBO(255, 54, 54, 10.0),
          Color.fromRGBO(209, 44, 44, 25.0)
        ])),
      ),
      Container(
        height: s * 0.5,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: <Color>[
          Color.fromRGBO(10, 3, 3, .8),
          Color.fromRGBO(66, 58, 49, 1.0),
          Color.fromRGBO(10, 3, 3, 0.8),
        ])),
      )
    ]);

    final circulo = Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          color: Color.fromRGBO(255, 255, 255, 0.069)),
    );

    return Stack(
      children: [
        fondoMorado,
        Positioned(top: 90.0, left: 30.0, child: circulo),
        Positioned(top: 90.0, left: 80.0, child: circulo),
        Positioned(top: 60.0, left: 55.0, child: circulo),
        Positioned(top: 90.0, right: 30.0, child: circulo),
        Positioned(top: 90.0, right: 80.0, child: circulo),
        Positioned(top: 60.0, right: 55.0, child: circulo),
        Positioned(top: 20.0, left: 500.0, child: circulo),
        Positioned(top: 20.0, right: 580.0, child: circulo),
        Positioned(top: 5.0, right: 620.0, child: circulo),
        Container(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              children: <Widget>[
                Icon(Icons.person_pin, color: Colors.white, size: 100),
                SizedBox(
                  height: 10.0,
                  width: double.infinity,
                ),
                Text('Javier Oliva',
                    style: TextStyle(color: Colors.white, fontSize: 25.0))
              ],
            )),
        SafeArea(
          child: SizedBox(
            width: 0.5,
          ),
        ),
      ],
    );
  }
}
