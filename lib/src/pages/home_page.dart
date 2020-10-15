import 'package:altiplanov2/src/widgets/drawerwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final userBloc = ProviderUsers.of(context);
    return Scaffold(
      drawer: MenuDra(),
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Color.fromRGBO(32, 178, 170, 0.8),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Email    : "{bloc.email}"'),
            Text('Password : {bloc.password}'),
          ]),
    );
  }
}
