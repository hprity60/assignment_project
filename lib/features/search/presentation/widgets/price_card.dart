import 'package:assignment_project/Utils/k_images.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/consts.dart';
import '../../../../Utils/font_style_helper.dart';

class PriceCard extends StatelessWidget {
  const PriceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            // height: 116,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: primaryColor,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ক্রয়মূল্যঃ ',
                        style: kHeading20.copyWith(color: redColor),
                      ),
                      Text(
                        '৳ 220',
                        style: kHeading20.copyWith(color: redColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'বিক্রয়মূল্যঃ ',
                        style: kHeading16,
                      ),
                      Text(
                        '৳ 250',
                        style: kHeading16,
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      for (int i = 0; i < 20; i++)
                        Expanded(
                          child: Row(
                            children: [
                              const Expanded(
                                child: Divider(
                                  color: Color(0xFFA0A0A0),
                                  thickness: 1,
                                ),
                              ),
                              Expanded(
                                child: Container(),
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'লাভঃ',
                        style: kHeading16,
                      ),
                      Text(
                        '৳ 30',
                        style: kHeading16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -62,
          left: 140,
          //left: 0,
          //right: 0,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              height: 95,
              width: 95,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage(Kimages.buttonImage))),
              child: Center(
                child: Text(
                  'এটি \nকিনুন',
                  textAlign: TextAlign.center,
                  style: kHeading16.copyWith(
                      color: primaryColor, fontWeight: FontWeight.normal),
                ),
              ),
            ),
          ),

          // child: Image.asset(
          //   Kimages.buttonImage,
          //   height: 80,
          //   width: 80,

          // ),
        ),
        Positioned(
          left: 215,
          bottom: -5,
          child: Container(
            alignment: Alignment.center,
            height: 25,
            width: 25,
            decoration: BoxDecoration(
              border: Border.all(color: primaryColor),
              borderRadius: BorderRadius.circular(55),
              color: const Color(0xFFFFCCE4),
            ),
            child: Text(
              '5',
              style: kHeading16.copyWith(color: redColor),
            ),
          ),
        ),
      ],
    );
  }
}
