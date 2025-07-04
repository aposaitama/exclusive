import 'package:exclusive_web/models/user_model/user_model.dart';
import 'package:exclusive_web/resources/app_colors.dart';
import 'package:exclusive_web/resources/app_fonts.dart';
import 'package:exclusive_web/widgets/custom_red_button.dart';
import 'package:flutter/material.dart';

class AddressBookItemTile extends StatelessWidget {
  final AddressModel addressItem;
  final void Function()? onButtonPressed;
  const AddressBookItemTile(
      {super.key, required this.addressItem, this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 20.0,
        left: 10.0,
        right: 10.0,
        top: 5.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            4.0,
          ),
          border: Border.all(
            width: 1.5,
            color:
                addressItem.isDefault ? AppColors.redColor : Colors.transparent,
          ),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(
                alpha: 0.05,
              ),
              offset: Offset(
                0,
                1,
              ),
              blurRadius: 13.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24.0,
            horizontal: 20.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        addressItem.firstName,
                        style: AppFonts.poppingMedium.copyWith(
                          fontSize: 20.0,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        addressItem.lastName,
                        style: AppFonts.poppingMedium.copyWith(
                          fontSize: 20.0,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    addressItem.streetAddress,
                    style: AppFonts.poppingRegular.copyWith(
                      fontSize: 16.0,
                      color: Colors.black.withValues(
                        alpha: 0.5,
                      ),
                    ),
                  ),
                  Text(
                    addressItem.city,
                    style: AppFonts.poppingRegular.copyWith(
                      fontSize: 16.0,
                      color: Colors.black.withValues(
                        alpha: 0.5,
                      ),
                    ),
                  ),
                  Text(
                    addressItem.phoneNumber,
                    style: AppFonts.poppingRegular.copyWith(
                      fontSize: 16.0,
                      color: Colors.black.withValues(
                        alpha: 0.5,
                      ),
                    ),
                  ),
                  Text(
                    addressItem.emailAddress,
                    style: AppFonts.poppingRegular.copyWith(
                      fontSize: 16.0,
                      color: Colors.black.withValues(
                        alpha: 0.5,
                      ),
                    ),
                  ),
                  // Text(addressItem.isDefault.toString()),
                ],
              ),
              if (!addressItem.isDefault)
                CustomRedButton(
                  onButtonPressed: onButtonPressed,
                  buttonTitle: 'Set to Default',
                ),
            ],
          ),
        ),
      ),
    );
  }
}
