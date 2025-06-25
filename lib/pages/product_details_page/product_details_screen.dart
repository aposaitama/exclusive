import 'package:exclusive_web/models/image_model/image_model.dart';
import 'package:exclusive_web/models/product_color_model/product_color_model.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc_event.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc_state.dart';
import 'package:exclusive_web/pages/product_details_page/sections/product_details_section/product_details_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductDetailsScreen extends StatefulWidget {
  final String productId;
  const ProductDetailsScreen({super.key, required this.productId});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  late final ProductDetailsBloc _productDetailsBloc;
  @override
  void initState() {
    _productDetailsBloc = ProductDetailsBloc();
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _productDetailsBloc.add(
          LoadDetailedProductInfoEvent(widget.productId),
        );
      },
    );
  }

  @override
  void dispose() {
    _productDetailsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _productDetailsBloc,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              BlocBuilder<ProductDetailsBloc, ProductDetailsBlocState>(
                builder: (context, state) {
                  if (state.product == null) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    return ProductDetailsSection(
                      productDetailedInfo: state.product!,
                    );
                  }
                },
              ),
              FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}
