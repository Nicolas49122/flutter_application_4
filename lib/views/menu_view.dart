import 'package:flutter/material.dart';

class MenuView extends StatelessWidget {
  void _logout(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menú Principal')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/home'), child: Text('Home')),
            ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/register'), child: Text('Registrar Producto')),
            ElevatedButton(onPressed: () => _logout(context), child: Text('Cerrar Sesión')),
          ],
        ),
      ),
    );
  }
}
