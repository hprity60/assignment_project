import 'package:assignment_project/features/search/data/models/search_model.dart';
import 'package:flutter/material.dart';

import '../../../../Utils/consts.dart';

class ImageBody extends StatefulWidget {
  final List<Images> images;

  const ImageBody({super.key, required this.images});

  @override
  State<ImageBody> createState() => _ImageBodyState();
}

class _ImageBodyState extends State<ImageBody> {
  int _currentIndex = 0;

  final _pageViewController =
      PageController(initialPage: 0, viewportFraction: 0.75);

  final myImagesList = [
    'assets/images/product_item_2.png',
    'assets/images/product_item_2.png',
    'assets/images/product_item_2.png',
    'assets/images/product_item_2.png',
    'assets/images/product_item_2.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: PageView.builder(
          controller: _pageViewController,
          itemCount: widget.images.length,
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          onPageChanged: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context, index) {
            //final images = myImagesList[index];
            var scale = _currentIndex == index ? 1.0 : 0.8;
            return TweenAnimationBuilder(
                tween: Tween(begin: scale, end: scale),
                duration: const Duration(milliseconds: 350),
                child: Container(
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(widget.images[index].image!),
                    ),
                  ),
                ),
                builder: (context, double value, child) {
                  return Transform.scale(
                    scale: value,
                    child: child,
                  );
                });
          }),
    );
  }
}
