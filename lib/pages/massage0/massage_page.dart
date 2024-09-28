import 'package:flutter/material.dart';

class MassagePage extends StatefulWidget {
  const MassagePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MassagePage();
  }
}

class _MassagePage extends State<MassagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('MassagePage'),
        ),
        body: SafeArea(child: Center(child: Text('MassagePage'))));
  }
}
