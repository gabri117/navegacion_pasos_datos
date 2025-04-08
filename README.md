# 🛒 Productos App - Flutter

Esta aplicación simple fue creada como parte de una práctica para aprender sobre la navegación entre pantallas en Flutter utilizando **rutas nombradas** y el **paso de parámetros**.

## 📱 Funcionalidades

- Pantalla principal con una lista de productos.
- Navegación a una pantalla de detalle al seleccionar un producto.
- Paso del nombre del producto como argumento.
- Pantalla de detalle muestra el nombre y permite volver a la lista.

## 🚀 Navegación entre pantallas

Se utiliza `Navigator.pushNamed` para navegar y pasar datos:
```dart
Navigator.pushNamed(context, '/detail', arguments: productName);

Y se recuperan en la pantalla de detalle con:

final String productName = ModalRoute.of(context)!.settings.arguments as String;

📂 Estructura del proyecto
lib/
├── main.dart
└── presentation/
    └── pages/
        ├── product_list_page.dart
        └── product_detail_page.dart
