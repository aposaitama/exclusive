import 'package:exclusive_web/navigation/routes.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_event.dart';
import 'package:exclusive_web/pages/cart_page/cart_bloc/cart_bloc_state.dart';
import 'package:exclusive_web/pages/checkout_page/bloc/checkout_bloc/checkout_bloc.dart';
import 'package:exclusive_web/pages/checkout_page/bloc/checkout_bloc/checkout_bloc_state.dart';
import 'package:exclusive_web/pages/checkout_page/section/checkout_section.dart';
import 'package:exclusive_web/pages/sections/footer_section.dart';
import 'package:exclusive_web/services/toast_service/toast_service.dart';
import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  final firstNameController = TextEditingController();
  final companyNameController = TextEditingController();
  final streetAddressController = TextEditingController();
  final apartmentController = TextEditingController();
  final cityController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailAddressController = TextEditingController();
  final cardNumController = TextEditingController();
  final cardExpDateController = TextEditingController();
  final cardCvvController = TextEditingController();

  @override
  void dispose() {
    firstNameController.dispose();
    companyNameController.dispose();
    streetAddressController.dispose();
    apartmentController.dispose();
    cityController.dispose();
    phoneNumberController.dispose();
    emailAddressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
            BlocListener<CheckoutBloc, CheckoutBlocState>(
              listener: (context, state) {
                if (state.status == CheckoutStatus.successfull) {
                  ToastService.showSuccess(
                    'Successfull payment',
                  );
                  HomeRoute().go(context);
                  context.read<CartBloc>().add(ClearCartEvent());
                } else if (state.status == CheckoutStatus.failed) {
                  ToastService.showError(
                    'Payment failed',
                  );
                }
              },
              child: BlocBuilder<CartBloc, CartBlocState>(
                builder: (context, state) {
                  return CheckoutSection(
                    cartProducts: state.productsList,
                    firstNameController: firstNameController,
                    companyNameController: companyNameController,
                    streetAddressController: streetAddressController,
                    apartmentController: apartmentController,
                    cityController: cityController,
                    phoneNumberController: phoneNumberController,
                    emailAddressController: emailAddressController,
                    cardNumController: cardNumController,
                    cardExpDateController: cardExpDateController,
                    cardCvvController: cardCvvController,
                  );
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
