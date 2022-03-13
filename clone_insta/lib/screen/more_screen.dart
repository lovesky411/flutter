import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Column(
        children: <Widget>[
          Container(padding: EdgeInsets.only(top: 50), child: Text('더보ㅓ기!!'),)

        ],
      ),),
    );
  }
}
