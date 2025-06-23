import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_event.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_state.dart';
import 'package:exclusive_web/pages/cart_page/sections/cart_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    context.read<CartBloc>().add(LoadCartlistProductsEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            BlocBuilder<CartBloc, CartBlocState>(
              builder: (context, state) {
                return CartSection(
                  onIncreaseArrowPressed: (productId) {
                    context
                        .read<CartBloc>()
                        .add(AddProductQuantityEvent(productId));
                  },
                  onDecreaseArrowPressed: (productId) {
                    context
                        .read<CartBloc>()
                        .add(RemoveProductQuantityEvent(productId));
                  },
                  onDeletePressed: (productId) {
                    context
                        .read<CartBloc>()
                        .add(RemoveProductFromCartlistEvent(productId));
                  },
                  cartProducts: state.productsList,
                );
              },
            ),
            FooterSection(),
          ],
        ),
      ),
    );
  }
}
