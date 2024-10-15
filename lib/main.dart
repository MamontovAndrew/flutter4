import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart';
import 'styles/app_styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Shop',
      theme: AppStyles.mainTheme,
      home: ProductListScreen(),
    );
  }
}
