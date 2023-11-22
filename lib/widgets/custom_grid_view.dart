import 'package:flutter/material.dart';
import 'package:shop_app/widgets/custom_item_card.dart';

import '../models/home_model.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({
    super.key,
    required this.products,
  });

  final List<Products>? products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .65,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        itemBuilder: (context, index) => customItemCard(products![index]),
        itemCount: products!.length,
      ),
    );
  }
}