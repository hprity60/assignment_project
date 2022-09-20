import 'package:assignment_project/features/search/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductSection extends StatelessWidget {
  const ProductSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: GridView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 30,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return const ProductCard();
      },
    ));
  }
}
