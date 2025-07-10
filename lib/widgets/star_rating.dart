import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_event.dart';
import 'package:exclusive_web/pages/account_page/widgets/custom_account_text_filed_with_title.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc.dart';
import 'package:exclusive_web/pages/product_details_page/bloc/product_details_bloc/product_details_bloc_event.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:exclusive_web/widgets/custom_transparent_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'star_item.dart';

class StarRating extends StatefulWidget {
  final int maxRating;
  final double rating;
  final double previusRating;
  final int previusCount;
  final String productID;
  final String productDocumentID;
  final void Function(double) onRatingSelected;
  final bool isHoverEnabled;

  const StarRating({
    super.key,
    this.maxRating = 5,
    required this.rating,
    required this.onRatingSelected,
    this.isHoverEnabled = true,
    required this.productID,
    required this.previusRating,
    required this.previusCount,
    required this.productDocumentID,
  });

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  double? _hoverRating;

  void _handleHover(int index) {
    if (!widget.isHoverEnabled) return;
    setState(() {
      _hoverRating = index + 1.0;
    });
  }

  void _handleExit() {
    if (!widget.isHoverEnabled) return;
    setState(() {
      _hoverRating = null;
    });
  }

  void _handleTap(int index) async {
    final selectedRating = index + 1.0;
    final TextEditingController feedbackController = TextEditingController();
    final TextEditingController userNameController = TextEditingController();

    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              4.0,
            ),
          ),
          backgroundColor: Colors.white,
          insetPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 600.0,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Your rating:'),
                      const SizedBox(height: 4),
                      Row(
                        children: List.generate(widget.maxRating, (starIndex) {
                          return Icon(
                            starIndex < selectedRating
                                ? Icons.star
                                : Icons.star_border,
                            color: Colors.amber,
                            size: 24,
                          );
                        }),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: CustomAccountTextFiledWithTitle(
                          maxLines: 1,
                          textFieldEditingController: userNameController,
                          fieldTitle: 'Your Name',
                          hint: 'Enter your name',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: CustomAccountTextFiledWithTitle(
                          maxLines: 10,
                          textFieldEditingController: feedbackController,
                          fieldTitle: 'Your feedback',
                          hint: 'Enter your feedback',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomRedButton(
                        buttonTitle: 'Cancel',
                        onButtonPressed: () => Navigator.of(context).pop(),
                      ),
                      const SizedBox(width: 8),
                      CustomTransparentButton(
                        buttonTitle: 'Send',
                        onButtonPressed: () {
                          widget.onRatingSelected(selectedRating);

                          context.read<AccountBloc>().add(
                                CreateReviewEvent(
                                  widget.productDocumentID,
                                  widget.productID,
                                  feedbackController.text,
                                  userNameController.text,
                                  selectedRating,
                                  widget.previusRating,
                                  widget.previusCount,
                                ),
                              );
                          // context.read<ProductDetailsBloc>().add(
                          //     LoadDetailedProductInfoEvent(
                          //         widget.productDocumentID));
                          Navigator.of(context).pop();
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final displayRating = _hoverRating ?? widget.rating;

    return Row(
      children: List.generate(widget.maxRating, (index) {
        return StarItem(
          index: index,
          currentRating: displayRating,
          onHover: _handleHover,
          onTap: () => _handleTap(index),
          onExit: _handleExit,
        );
      }),
    );
  }
}
