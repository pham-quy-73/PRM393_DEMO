import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Demo',
      theme: ThemeData.light(), // hoặc bỏ dòng này để dùng mặc định
      home: ProductListScreen(),
    );
  }
}
