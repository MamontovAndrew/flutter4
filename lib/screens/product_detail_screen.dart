import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetailScreen extends StatelessWidget {
  final Product product;

  ProductDetailScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.network(
                  product.imageUrl,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(
                product.name,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              SizedBox(height: 18),
              Text('${product.price.toStringAsFixed(0)} руб.',
                  style: TextStyle(fontSize: 18)),
              SizedBox(height: 18),
              Text(product.description),
              SizedBox(height: 18),
              ElevatedButton(
                onPressed: () {
                },
                child: Text('Купить'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
