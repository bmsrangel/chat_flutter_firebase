import 'package:chat_flutter_firebase/app/modules/spash/spash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SpashPage extends StatefulWidget {
  final String title;
  const SpashPage({Key key, this.title = "Spash"}) : super(key: key);

  @override
  _SpashPageState createState() => _SpashPageState();
}

class _SpashPageState extends State<SpashPage> {
  final SpashController controller = Modular.get<SpashController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Text("Splash Screen"),
        ],
      ),
    );
  }
}
