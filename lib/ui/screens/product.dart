import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductDetailScreen extends StatelessWidget {
  final Map<String, String> product;

  const ProductDetailScreen({Key? key, required this.product})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart_outlined),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.person_outline),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(
                  product['image']!,
                  width: size.width,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.arrow_back, color: Colors.grey),
                      Gap(5),
                      Icon(Icons.arrow_forward, color: Colors.grey),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange, size: 16),
                      Text(
                        "4.5",
                        style: TextStyle(color: Colors.orange),
                      ),
                      Gap(5),
                      Text(
                        "32 reviews",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Gap(5),
                      Text(
                        "| 154 sold",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Gap(10),
                  Text(
                    product['name']!,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(5),
                  const Text(
                    "\$129.95 (50-100 pcs)",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  ),
                  const Gap(10),

                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff0D6EFD),
                        ),
                        child: const Text("Send inquiry"),
                      ),
                      const Gap(10),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border),
                      )
                    ],
                  ),
                  const Gap(20),
                  // Product Details
                  const Text("Condition",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text("Brand new"),
                  const Gap(10),
                  const Text("Material",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text("Plastic"),
                  const Gap(10),
                  const Text("Category",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text("Electronics, gadgets"),
                  const Gap(10),
                  const Text("Item num",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text("23421"),
                  const Gap(10),
                  const Text(
                    "Info about edu item is an ideal companion for anyone engaged in learning. "
                    "The drone provides precise and ...",
                  ),
                  const Gap(5),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Read more"),
                  ),
                  const Divider(),
                  // Supplier Info
                  const Row(
                    children: [
                      CircleAvatar(
                        radius: 20,
                        backgroundColor: Colors.grey,
                        child: Text("R", style: TextStyle(color: Colors.white)),
                      ),
                      Gap(10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Supplier",
                              style: TextStyle(color: Colors.grey)),
                          Text("Guanjoi Trading LLC"),
                        ],
                      ),
                      const Spacer(),
                      Row(
                        children: const [
                          Icon(Icons.location_on_outlined),
                          Text("Germany"),
                        ],
                      ),
                    ],
                  ),
                  const Gap(10),
                  const Row(
                    children: [
                      Chip(
                        label: Text("Verified"),
                        avatar: Icon(Icons.check_circle, color: Colors.green),
                      ),
                      Gap(5),
                      Chip(
                        label: Text("Shipping"),
                        avatar: Icon(Icons.local_shipping_outlined),
                      ),
                    ],
                  ),
                  const Divider(),

                  // Similar Products Section
                  const Text(
                    "Similar products",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildSimilarProductCard(),
                        _buildSimilarProductCard(),
                        _buildSimilarProductCard(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSimilarProductCard() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        width: 120,
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("assets/images/siut.png",
                width: 120, height: 80, fit: BoxFit.cover),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("\$10.30",
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "T-shirts ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
