import 'package:exclusive_web/models/image_model/image_model.dart';
import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:exclusive_web/pages/product_details_page/sections/product_details_section/product_details_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String productId;
  const ProductDetailsScreen({super.key, required this.productId});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  final List<String> productSize = ['S', 'M', 'L'];
  final productColors = [
    ProductColorModel(
      colorCode: '0xFFA0BCE2',
      mainProductImage:
          ImageModel(url: '/uploads/game_Pad_Main_a16e06ad9c.png'),
      galleryProductImages: [
        ImageModel(url: '/uploads/image_57_3d2e21c60a.png'),
        ImageModel(url: '/uploads/image_59_423fccb277.png'),
        ImageModel(url: '/uploads/image_58_d6e87a3fdc.png'),
        ImageModel(
          url: '/uploads/image_58_d6e87a3fdc.png',
        ),
      ],
    ),
    ProductColorModel(
      colorCode: '0xFFE07575',
      mainProductImage: ImageModel(url: '/uploads/Frame_610_f562af4161.png'),
      galleryProductImages: [
        ImageModel(url: '/uploads/image_57_3d2e21c60a.png'),
        ImageModel(url: '/uploads/image_59_423fccb277.png'),
        ImageModel(url: '/uploads/image_58_d6e87a3fdc.png'),
        ImageModel(url: '/uploads/image_58_d6e87a3fdc.png'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            ProductDetailsSection(
              productPrice: 192.00,
              productColors: productColors,
              productSizeList: productSize,
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
