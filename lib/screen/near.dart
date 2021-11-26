import 'package:flutter/material.dart';

class NearByScreen extends StatelessWidget {
  const NearByScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Near By'),
      ),
      body: Center(
        child: Text('Near By'),
      ),
    );
  }
}
