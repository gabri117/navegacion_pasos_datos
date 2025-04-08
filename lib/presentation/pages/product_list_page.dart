import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  final List<String> products = [
    'Laptop HP',
    'Smartphone Samsung',
    'Tablet Lenovo',
    'Smartwatch Xiaomi',
    'Auriculares Sony'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de Productos')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detail',
                arguments: products[index],
              );
            },
          );
        },
      ),
    );
  }
}