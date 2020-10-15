//import 'package:altiplanov2/src/controllers/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:get/get.dart';
//import 'package:flutter/rendering.dart';

class UserPage extends StatelessWidget {
  final TextStyle textstyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  final InputDecoration decoration = InputDecoration(
    border: OutlineInputBorder(),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlutterLogo(
                  size: 190,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: decoration,
                ),
                SizedBox(
                  height: 15,
                ),
                TextFormField(
                  decoration: decoration,
                ),
                SizedBox(
                  height: 15,
                ),
                MaterialButton(
                  color: Colors.red,
                  minWidth: 160,
                  onPressed: () {},
                  child: Text(
                    'Google',
                    style: textstyle,
                  ),
                ),
                MaterialButton(
                  color: Colors.blue,
                  minWidth: 160,
                  onPressed: () {},
                  child: Text(
                    'Facebook',
                    style: textstyle,
                  ),
                ),
                MaterialButton(
                  color: Colors.orange,
                  minWidth: 160,
                  onPressed: () {},
                  child: Text(
                    'E-mail',
                    style: textstyle,
                  ),
                ),
                MaterialButton(
                  color: Colors.orange,
                  minWidth: 160,
                  onPressed: () => Get.back(),
                  child: Text(
                    'atras',
                    style: textstyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
