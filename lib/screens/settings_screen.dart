import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SettingsScreen extends StatefulWidget {
  static const String routeName = 'Setings';

  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isDarkMode = false;
  int gender = 1;
  String name = 'Pedro';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Settings',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold)),
              const Divider(),
              SwitchListTile.adaptive(
                value: isDarkMode,
                title: const Text('Dark Mode'),
                onChanged: (value) {
                  isDarkMode = value;
                  setState(() {});
                },
              ),
              RadioListTile<int>(
                value: 1,
                title: const Text('Masculino'),
                groupValue: gender,
                onChanged: (value) {
                  gender = value ?? 1;
                  setState(() {});
                },
              ),
              RadioListTile<int>(
                value: 2,
                title: const Text('Femenino'),
                groupValue: gender,
                onChanged: (value) {
                  gender = value ?? 2;
                  setState(() {});
                },
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: 'Nombre de usuario',
                    helperText:
                        'Nombre de usuario para mostrar en las publicaciones',
                  ),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
