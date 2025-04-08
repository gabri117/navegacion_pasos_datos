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
        padding: EdgeInsets.all(12),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            color: Theme.of(context).cardColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            elevation: 4,
            margin: EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              leading: Icon(Icons.shopping_cart, color: Theme.of(context).colorScheme.secondary),
              title: Text(
                products[index],
                style: Theme.of(context).textTheme.titleLarge,
              ),
              trailing: Icon(Icons.arrow_forward_ios, size: 16, color: Colors.white54),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: products[index],
                );
              },
            ),
          );
        },
      ),
    );
  }
}
