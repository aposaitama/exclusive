import 'package:exclusive_web/pages/all_products_page/bloc/all_products_bloc.dart';
import 'package:exclusive_web/pages/all_products_page/bloc/all_products_event.dart';
import 'package:exclusive_web/pages/all_products_page/widgets/all_products_view.dart';
import 'package:exclusive_web/repositories/general_products_repository/general_products_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllProductsPage extends StatefulWidget {
  final GeneralViewAllRepository? repository;
  final String sectionName;
  const AllProductsPage(
      {super.key, this.repository, required this.sectionName});

  @override
  State<AllProductsPage> createState() => _AllProductsPageState();
}

class _AllProductsPageState extends State<AllProductsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AllProductsBloc>(
      create: (_) => AllProductsBloc(
        repository: widget.repository ?? FlashSalesProductsRepository(),
      )..add(
          const LoadInitialProducts(),
        ),
      child: AllProductsView(
        sectionName: widget.sectionName,
      ),
    );
  }
}
