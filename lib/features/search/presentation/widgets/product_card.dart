import 'package:assignment_project/Utils/consts.dart';
import 'package:assignment_project/Utils/font_style_helper.dart';
import 'package:assignment_project/Utils/k_images.dart';
import 'package:assignment_project/features/product_detail/presentation/pages/product_detail.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const ProductDetail(),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 300,
        width: 164,
        decoration: const BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        child: productCardItems(),
      ),
    );
  }

  Widget productCardItems() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Positioned(
          bottom: -15,
          left: 0,
          right: 0,
          child: GestureDetector(
              onTap: () {
                Transform.scale(
                  scale: 0.5,
                  origin: const Offset(50.0, 50.0),
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    color: Colors.blue,
                  ),
                );
              },
              child: Image.asset(Kimages.addButtonImage)),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Image.asset(Kimages.productItemImage),
              ),
            ),
            const SizedBox(height: 10),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5),
                  Flexible(
                    flex: 1,
                    child: Text(
                      "Lays Classic Family Chips\n",
                      style: kHeading14,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                          flex: 5,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'ক্রয় ',
                                    style: kHeading8,
                                  ),
                                  Text(
                                    '৳ 20.00',
                                    style: kHeading16.copyWith(color: redColor),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '৳ 22.00',
                                    style: kHeadingWithDecoration12.copyWith(
                                        color: redColor),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 2),
                              Row(
                                children: [
                                  Text(
                                    'বিক্রয় ',
                                    style: kHeading8,
                                  ),
                                  Text(
                                    '৳ 25.00',
                                    style: kHeading12.copyWith(
                                        color: secondaryColor),
                                  ),
                                  const Spacer(),
                                  Text('লাভ ', style: kHeading8),
                                  Text(
                                    '৳ 5.00',
                                    style: kHeading12.copyWith(
                                        color: secondaryColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
