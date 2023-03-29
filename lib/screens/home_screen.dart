import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('isDarkmode'),
          Divider(),
          Text('Genero: '),
          Divider(),
          Text('Nombre de usuario: '),
          Divider(),
        ],
      ),
    );
  }
}
