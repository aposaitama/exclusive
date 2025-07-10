import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc_state.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc_event.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc_state.dart';
import 'package:exclusive_web/pages/product_details_page/sections/product_details_section/product_details_section.dart';
import 'package:exclusive_web/pages/product_details_page/sections/product_details_shimmer_screen.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/services/toast_service/toast_service.dart';
import 'package:exclusive_web/widgets/breadcrumbs_item.dart';
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
  // late final ProductDetailsBloc _productDetailsBloc;
  @override
  void initState() {
    super.initState();
    context.read<ProductDetailsBloc>().add(
          LoadDetailedProductInfoEvent(
            widget.productId,
          ),
        );
  }

  // @override
  // void dispose() {
  //   _productDetailsBloc.close();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            AutoBreadcrumbs(),
            BlocListener<AccountBloc, AccountState>(
              listener: (context, state) {
                if (state.createReviewStatus == CreateReviewStatus.success) {
                  context.read<ProductDetailsBloc>().add(
                        LoadDetailedProductInfoEvent(
                          widget.productId,
                        ),
                      );
                }
                if (state.createReviewStatus == CreateReviewStatus.failure) {
                  ToastService.showError(
                    'You must Log in first',
                  );
                }
              },
              child: BlocBuilder<ProductDetailsBloc, ProductDetailsBlocState>(
                builder: (context, state) {
                  if (state.product == null) {
                    return ProductDetailsShimmer();
                  } else {
                    return ProductDetailsSection(
                      productDetailedInfo: state.product!,
                    );
                  }
                },
              ),
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
