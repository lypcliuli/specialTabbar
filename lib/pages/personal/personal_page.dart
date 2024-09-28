import 'package:flutter/material.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _PersonalPage();
  }
}

class _PersonalPage extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PersonalPage'),
        ),
        body: SafeArea(child: Center(child: Text('PersonalPage'))));
  }
}
