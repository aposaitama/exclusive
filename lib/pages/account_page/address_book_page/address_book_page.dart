import 'package:exclusive_web/pages/account_page/address_book_page/widget/address_book_item_tile.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_bloc_state.dart';
import 'package:exclusive_web/pages/account_page/bloc/account_bloc/account_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressSection extends StatefulWidget {
  const AddressSection({super.key});

  @override
  State<AddressSection> createState() => _AddressSectionState();
}

class _AddressSectionState extends State<AddressSection> {
  @override
  void initState() {
    context.read<AccountBloc>().add(GetUserAddressEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) {
        final addresses = state.userAddresses;
        return addresses.isNotEmpty
            ? Column(
                children: List.generate(
                  addresses.length,
                  (index) {
                    return AddressBookItemTile(
                      onButtonPressed: () => context.read<AccountBloc>().add(
                            SetDefaultUserAddressEvent(
                              addresses[index].documentId,
                            ),
                          ),
                      addressItem: addresses[index],
                    );
                  },
                ),
              )
            : SizedBox();
      },
    );
  }
}
