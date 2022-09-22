import 'dart:io';

import 'package:assignment_project/Utils/consts.dart';
import 'package:assignment_project/Utils/font_style_helper.dart';
import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:assignment_project/features/search/presentation/widgets/search_text_field.dart';
import 'package:flutter/material.dart';

import '../widgets/image_body.dart';
import '../widgets/price_card.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.result});
  final Result result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          'প্রোডাক্ট ডিটেইল',
          style: TextStyle(
              color: Color(0xFF323232),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Platform.isAndroid ? Icons.arrow_back : Icons.arrow_back_ios_new,
            color: const Color(0xFF323232),
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: SearchTextField(hintText: 'কাঙ্ক্ষিত পণ্যটি খুঁজুন'),
            ),
            const SizedBox(height: 20),
            ImageBody(images: result.images!),
      // problem ta ekhane ekhane ki hobe  
      // image ta search model thekew asche, flutter er image library theke asche concrte hocce
      // fix korbo kivbe
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                result.productName!,
                // 'প্রিঞ্জেলস অনিওন চিপস ৪২ গ্রাম',
                style: kHeading24,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text(
                    'ব্রান্ডঃ ',
                    style: kHeading14,
                  ),
                  Text(
                    'প্রিঞ্জেলস',
                    style: kHeading14.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    height: 6,
                    width: 6,
                    decoration: BoxDecoration(
                      color: const Color(0xFFDA2079),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'ডিস্ট্রিবিউটরঃ মোঃ মোবারাক হোসেন',
                    style: kHeading14,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            const PriceCard(),
            const SizedBox(height: 70),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'বিস্তারিত',
                style: kHeading20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'জীবের মধ্যে সবচেয়ে সম্পূর্ণতা মানুষের। কিন্তু সবচেয়ে অসম্পূর্ণ হয়ে সে জন্মগ্রহণ করে। বাঘ ভালুক তার জীবনযাত্রার পনেরো- আনা মূলধন নিয়ে আসে প্রকৃতির মালখানা থেকে। জীবরঙ্গভূমিতে মানুষ এসে দেখা দেয় দুই শূন্য হাতে মুঠো বেঁধে।',
                style: kHeading16.copyWith(color: descriptionColor),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}


