import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'fidelity_controller.dart';

class FidelityPage extends StatefulWidget {
  final String title;
  const FidelityPage({Key key, this.title = "Fidelity"}) : super(key: key);

  @override
  _FidelityPageState createState() => _FidelityPageState();
}

class _FidelityPageState
    extends ModularState<FidelityPage, FidelityController> {
  //use 'controller' variable to access controller
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      key: scaffoldKey,
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              scaffoldKey.currentState.openDrawer();
            }),
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[_cardStar(),],
      ),
    );
  }

  Widget _cardStar() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            Icons.star,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.star,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.star,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.star_border,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.star_border,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }

  
}
