import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'professionals_controller.dart';

class ProfessionalsPage extends StatefulWidget {
  final String title;
  const ProfessionalsPage({Key key, this.title = "Professionals"})
      : super(key: key);

  @override
  _ProfessionalsPageState createState() => _ProfessionalsPageState();
}

class _ProfessionalsPageState
    extends ModularState<ProfessionalsPage, ProfessionalsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
