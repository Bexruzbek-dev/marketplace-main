import 'package:flutter/material.dart';
import 'package:marketplace/ui/screens/product.dart';

class ProductListScreen extends StatelessWidget {
  final List<Map<String, String>> products;

  const ProductListScreen({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          ProductDetailScreen(product: product),
                    ),
                  );
                },
                leading: Image.asset(product['image']!),
                title: Text(product['name']!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '\$1200',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 16),
                        const SizedBox(width: 4),
                        const Text(
                          '4.5',
                          style: const TextStyle(color: Colors.orange),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '${product['category']} orders',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                    if (product['discount'] == true)
                      const Text(
                        'Free Shipping',
                        style: TextStyle(color: Colors.green),
                      ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
