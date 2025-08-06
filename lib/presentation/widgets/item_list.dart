import 'package:bike_shopping_app/models/product_model.dart';
import 'package:bike_shopping_app/presentation/widgets/item_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemList extends StatelessWidget {
  ItemList({super.key});
  final List<ProductModel> products = [
    ProductModel(
      imageUrl: 'assets/images/bike2.png',
      name: 'Road Bike',
      type: 'PEUGEOT - LR02',
      price: 120,
      isFavorite: false,
    ),
    ProductModel(
      imageUrl: 'assets/images/hem.png',
      name: 'Road Helmet',
      type: 'SMITH - Trade',
      price: 29.99,
      isFavorite: true,
    ),
    ProductModel(
      imageUrl: 'assets/images/bike.png',
      name: 'Mountain Bike',
      type: 'TREK - Marlin 7',
      price: 85.50,
      isFavorite: true,
    ),
    ProductModel(
      imageUrl: 'assets/images/bike1.png',
      name: 'Hybrid Bike',
      type: 'GIANT - Escape 3',
      price: 74.00,
      isFavorite: false,
    ),
    ProductModel(
      imageUrl: 'assets/images/bike2.png',
      name: 'Electric Bike',
      type: 'Specialized - Turbo Vado',
      price: 150.00,
      isFavorite: true,
    ),
    ProductModel(
      imageUrl: 'assets/images/bike1.png',
      name: 'Folding Bike',
      type: 'Brompton - M6L',
      price: 130.99,
      isFavorite: false,
    ),
    ProductModel(
      imageUrl: 'assets/images/bike.png',
      name: 'Gravel Bike',
      type: 'Canyon - Grizl CF SL',
      price: 99.99,
      isFavorite: true,
    ),
    ProductModel(
      imageUrl: 'assets/images/hem.png',
      name: 'Bike Helmet',
      type: 'GIRO - Register',
      price: 35.00,
      isFavorite: false,
    ),
    ProductModel(
      imageUrl: 'assets/images/hem.png',
      name: 'Helmet Pro',
      type: 'POC - Ventral Air Spin',
      price: 58.99,
      isFavorite: true,
    ),
    ProductModel(
      imageUrl: 'assets/images/hem.png',
      name: 'Mountain Helmet',
      type: 'BELL - Super 3R',
      price: 60.00,
      isFavorite: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12.w,
        mainAxisSpacing: 12.h,
        childAspectRatio: (165 / 219).h,
      ),
      itemBuilder: (context, index) {
        return ItemCard(product: products[index]);
      },
    );
  }
}
