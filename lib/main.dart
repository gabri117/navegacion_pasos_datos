import 'package:flutter/material.dart';
import 'presentation/pages/product_list_page.dart';
import 'presentation/pages/product_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final ThemeData darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Color(0xFF121212),
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0xFF1F1F1F),
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(color: Colors.white),
      elevation: 0,
    ),
    colorScheme: ColorScheme.dark(
      primary: Color(0xFFBB86FC),
      secondary: Color(0xFF03DAC6),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white70, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white60),
      titleLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    ),
    cardColor: Color(0xFF1E1E1E),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFFBB86FC),
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PRODUCTOS APP',
      theme: darkTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      //Definiendo las rutas de la app 
      //en este caso la ruta inicial es la lista de productos
      //y la segunda ruta es la de detalle del producto
      //que recibe un argumento (el nombre del producto)
      routes: {
        '/': (context) => ProductListPage(),
        '/detail': (context) => ProductDetailPage(),
      },
    );
  }
}
