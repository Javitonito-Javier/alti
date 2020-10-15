import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuDra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color.fromRGBO(98, 222, 255, 0.72),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.pages, color: Colors.blueGrey[300]),
              title: Text('Home'),
              onTap: () => Get.toNamed('/'),
            ),
            ListTile(
              leading: Icon(
                Icons.people,
                color: Colors.blue,
                size: 0.5,
              ),
              title: Text('Users'),
              onTap: () => Get.toNamed('/user'),
            ),
            ListTile(
                leading: Icon(Icons.layers, color: Colors.blue),
                title: Text('Hoja de Trabajo'),
                onTap: () => Get.toNamed('/user')),
            ListTile(
                leading: Icon(Icons.work_rounded, color: Colors.blue),
                title: Text('Reportes'),
                onTap: () => Get.toNamed('/user')),
            ListTile(
                leading: Icon(Icons.emoji_nature, color: Colors.blue),
                title: Text('Empleados'),
                onTap: () => Get.toNamed('/formlogin')),
            //MaterialButton( /formlogin
            //  hoverColor: Colors.blueGrey,
            //  child: Text('Hoja de Trabajo'),
            //  onPressed: () {
            //    //Navigator.popAndPushNamed(context, 'usuario');
            //    Get.toNamed('/user');
            // },
            //),
            //MaterialButton(
            // child: Text('Login'),
            // onPressed: () {
            //    //Navigator.popAndPushNamed(context, 'usuario');
            //    Get.toNamed('/login');
            //  },
            //),
            ListTile(
                leading: Icon(Icons.logout, color: Colors.blue),
                title: Text('Cerrar Sesion'),
                onTap: () => Get.toNamed('/user')),
          ],
        ),
      ),
    );
  }
}
