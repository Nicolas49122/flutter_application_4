import 'package:flutter/material.dart';
import '../data/product_data.dart';
import '../models/product.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Product> products = ProductData.productList;

    return Scaffold(
      appBar: AppBar(title: Text('Lista de Productos')),
      body: products.isEmpty
          ? Center(child: Text('No hay productos registrados'))
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(products[index].name),
                subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
              ),
            ),
    );
  }
}
