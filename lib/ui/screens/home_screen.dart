import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marketplace/ui/screens/cart_screen.dart';
import 'package:marketplace/ui/screens/category.dart';
import 'package:marketplace/ui/screens/itemlist_screen.dart';
import 'package:marketplace/ui/screens/product.dart';
import 'package:marketplace/ui/widgets/custom_drawer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> times = [
    " 13\nHour",
    " 34\nMin",
    " 56\nSec",
  ];
  final List<String> categories = [
    "All category",
    "Gadgets",
    "Clothes",
    "Accessories",
    "Watches",
    "Phones",
  ];

// Expanded list of products with at least 10 items per category
  final List<Map<String, String>> items = [
    // Gadgets
    {
      "image": "assets/images/siut.png",
      "name": "Smart watches",
      "discount": "-25%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/airpods.png",
      "name": "Headphones",
      "discount": "-15%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/laptops.png",
      "name": "Smartphones",
      "discount": "-10%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/iphone.png",
      "name": "Laptops",
      "discount": "-5%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/tablet.png",
      "name": "Tablets",
      "discount": "-20%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/smartwatch.png",
      "name": "Smartwatch Pro",
      "discount": "-30%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/smart_glasses.png",
      "name": "Smart Glasses",
      "discount": "-10%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/camera.png",
      "name": "Camera",
      "discount": "-15%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/drone.png",
      "name": "Drone",
      "discount": "-25%",
      "category": "Gadgets"
    },
    {
      "image": "assets/images/vr.png",
      "name": "VR Headset",
      "discount": "-20%",
      "category": "Gadgets"
    },
  ];
  // Clothes
  List<Map<String, String>> clothes = [
    {
      "image": "assets/images/tshirt.png",
      "name": "T-Shirt",
      "discount": "-10%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/jacket.png",
      "name": "Jacket",
      "discount": "-15%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/jeans.png",
      "name": "Jeans",
      "discount": "-20%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/dress.png",
      "name": "Dress",
      "discount": "-25%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/shirt.png",
      "name": "Shirt",
      "discount": "-5%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/skirt.png",
      "name": "Skirt",
      "discount": "-10%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/shorts.png",
      "name": "Shorts",
      "discount": "-15%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/sweater.png",
      "name": "Sweater",
      "discount": "-20%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/hoodie.png",
      "name": "Hoodie",
      "discount": "-30%",
      "category": "Clothes"
    },
    {
      "image": "assets/images/suit.png",
      "name": "Suit",
      "discount": "-35%",
      "category": "Clothes"
    },
  ];
  // Accessories
  List<Map<String, String>> acces = [
    {
      "image": "assets/images/sunglasses.png",
      "name": "Sunglasses",
      "discount": "-10%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/bag.png",
      "name": "Handbag",
      "discount": "-20%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/wallet.png",
      "name": "Wallet",
      "discount": "-15%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/belt.png",
      "name": "Belt",
      "discount": "-5%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/hat.png",
      "name": "Hat",
      "discount": "-30%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/scarf.png",
      "name": "Scarf",
      "discount": "-10%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/watch.png",
      "name": "Watch",
      "discount": "-25%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/bracelet.png",
      "name": "Bracelet",
      "discount": "-15%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/earrings.png",
      "name": "Earrings",
      "discount": "-20%",
      "category": "Accessories"
    },
    {
      "image": "assets/images/necklace.png",
      "name": "Necklace",
      "discount": "-5%",
      "category": "Accessories"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const CustomDrawerWidget(),
      appBar: AppBar(
        toolbarHeight: 50,
        title: Row(
          children: [
            SvgPicture.asset("assets/icons/cart.svg"),
            Gap(5.h),
            Text(
              "Brand",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.bold,
                color: const Color(0xff8CB7F5),
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, CupertinoPageRoute(
                builder: (context) {
                  return const CartScreen();
                },
              ));
            },
            icon: const Icon(CupertinoIcons.cart),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(CupertinoIcons.person),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextFormField(
                onTap: () {
                  Navigator.push(context, CupertinoPageRoute(
                    builder: (context) {
                      return const ItemlistScreen();
                    },
                  ));
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: "Search",
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIconColor: Colors.grey,
                  filled: true,
                  fillColor: Colors.grey[100],
                  prefixIcon: const Icon(Icons.search),
                  border: const OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7),
                    borderSide: BorderSide(color: Colors.grey[300]!),
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: categories.map((category) {
                    return Card(
                      margin: const EdgeInsets.all(4),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: const Color(0xffeff2f4),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          category,
                          style: const TextStyle(
                            color: Color(0xff0D6EFD),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
            Gap(10.h),
            Container(
              width: size,
              height: 180.h,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage("assets/images/laptop.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Latest trending",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Electronic items",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Gap(20.h),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "Learn more",
                          style: TextStyle(
                            color: Color(0xff0D6EFD),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(12.sp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deals and offers",
                        style: GoogleFonts.inter(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Electronic equipments",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: times.map((time) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                          width: 45.w,
                          height: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[300],
                          ),
                          child: Center(
                              child: Text(
                            time,
                            style: const TextStyle(color: Colors.grey),
                          )),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = items[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(product: item),
                        ),
                      );
                    },
                    child: Container(
                      width: 140.w,
                      height: 180.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 76.w,
                            height: 83.h,
                            child: Image.asset(item["image"].toString()),
                          ),
                          Text(item["name"]!),
                          Gap(5.h),
                          Card(
                            color: const Color(0xffFFE3E3),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(item["discount"]!),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: size,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Source now",
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff0D6EFD),
                      ),
                    ),
                    Gap(5.w),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return ProductListScreen(products: items);
                        }));
                      },
                      icon: Icon(Icons.arrow_forward_outlined),
                      color: Color(0xff0D6EFD),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Clothe",
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = clothes[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(product: item),
                        ),
                      );
                    },
                    child: Container(
                      width: 140.w,
                      height: 180.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 76.w,
                            height: 83.h,
                            child: Image.asset(item["image"].toString()),
                          ),
                          Text(item["name"]!),
                          Gap(5.h),
                          Card(
                            color: const Color(0xffFFE3E3),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(item["discount"]!),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: size,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Source now",
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff0D6EFD),
                      ),
                    ),
                    Gap(5.w),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return ProductListScreen(products: clothes);
                        }));
                      },
                      icon: Icon(Icons.arrow_forward_outlined),
                      color: Color(0xff0D6EFD),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10.h),
            Container(
              width: size,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[200]!,
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Accesories",
                  style: GoogleFonts.inter(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  final item = acces[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ProductDetailScreen(product: item),
                        ),
                      );
                    },
                    child: Container(
                      width: 140.w,
                      height: 180.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey[300]!),
                        color: Colors.white,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 76.w,
                            height: 83.h,
                            child: Image.asset(item["image"].toString()),
                          ),
                          Text(item["name"]!),
                          Gap(5.h),
                          Card(
                            color: const Color(0xffFFE3E3),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 10,
                                right: 10,
                                top: 2,
                                bottom: 2,
                              ),
                              child: Text(item["discount"]!),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              width: size,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[300]!,
                ),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Source now",
                      style: GoogleFonts.inter(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff0D6EFD),
                      ),
                    ),
                    Gap(5.w),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (ctx) {
                          return ProductListScreen(products: acces);
                        }));
                      },
                      icon: Icon(Icons.arrow_forward_outlined),
                      color: Color(0xff0D6EFD),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: size,
              height: 150.h,
              decoration: const BoxDecoration(
                color: Colors.amber,
                image: DecorationImage(
                  image: AssetImage("assets/images/laptop.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "An easy way to send\nrequests to all suppliers",
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    Gap(20.h),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      color: const Color(0xff0D6EFD),
                      child: const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Text(
                          "Send inquiry",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(10.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Recommended items",
                style: GoogleFonts.inter(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Image.asset("assets/images/product_images.png"),
            Gap(20.h),
          ],
        ),
      ),
    );
  }
}
