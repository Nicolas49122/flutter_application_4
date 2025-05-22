import 'package:flutter/material.dart';
import '../models/product.dart';
import '../data/product_data.dart';

class RegisterProductView extends StatelessWidget {
  final _nameController = TextEditingController();
  final _priceController = TextEditingController();

  void _registerProduct(BuildContext context) {
    final name = _nameController.text.trim();
    final priceText = _priceController.text.trim();

    if (name.isEmpty || priceText.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Completa todos los campos')));
      return;
    }

    final price = double.tryParse(priceText);
    if (price == null || price <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Precio inválido')));
      return;
    }

    Product newProduct = Product(name: name, price: price);
    ProductData.productList.add(newProduct);

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Producto registrado')));

    _nameController.clear();
    _priceController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registrar Producto')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Nombre del producto')),
            TextField(controller: _priceController, decoration: InputDecoration(labelText: 'Precio'), keyboardType: TextInputType.number),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => _registerProduct(context), child: Text('Registrar')),
          ],
        ),
      ),
    );
  }
}
