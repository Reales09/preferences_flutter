import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = 'Setings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: const Center(
        child: Text('SettingsScreen'),
      ),
    );
  }
}
