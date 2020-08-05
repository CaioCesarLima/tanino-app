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
        children: <Widget>[_cardStar(), _cardFidelity()],
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

  Widget _cardFidelity() {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
          width: size.width * .75,
          height: (size.height - 200) * .9,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.white, width: 5)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              _rowCardFidelity(),
              _rowCardFidelity(),
              _rowCardFidelity(),
            ],
          )),
    );
  }

  Widget _rowCardFidelity() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        _cardAssignFidelity(true),
        _cardAssignFidelity(true),
      ],
    );
  }

  Widget _cardAssignFidelity(bool assign) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: assign ? Image.network('https://boomera.com.br/wp-content/uploads/2017/05/assinatura-gui-1.png') : Container(),
    );
  }
}
