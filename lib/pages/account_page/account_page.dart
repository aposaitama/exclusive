import 'package:exclusive_web/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int selectedIndex = 0;

  final sections = [
    Center(child: Text('My Profile Section')),
    Center(child: Text('Address Book Section')),
    Center(child: Text('Payment Options Section')),
    Center(child: Text('My Wishlist Section')),
  ];

  final menuItems = [
    'My Profile',
    'Address Book',
    'Payment Options',
    'My Wishlist',
  ];
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final appBarHeight = kToolbarHeight;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 1170),
              child: SizedBox(
                height: 630.0,
                child: Row(
                  children: [
                    NavigationRail(
                      selectedIndex: selectedIndex,
                      onDestinationSelected: (index) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      labelType: NavigationRailLabelType.all,
                      destinations: menuItems
                          .map((item) => NavigationRailDestination(
                                icon: const Icon(Icons.circle_outlined),
                                selectedIcon: const Icon(Icons.circle),
                                label: Text(item),
                              ))
                          .toList(),
                    ),
                    const VerticalDivider(thickness: 1, width: 1),
                    sections[selectedIndex],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
