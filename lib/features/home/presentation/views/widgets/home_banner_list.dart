import 'package:carousel_slider/carousel_slider.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class HomeBannerList extends StatelessWidget {
  const HomeBannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: AppSizes.h200,

        scrollPhysics: const BouncingScrollPhysics(),

        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),

        autoPlayAnimationDuration: const Duration(milliseconds: 800),

        autoPlayCurve: Curves.easeInOut,

        enlargeCenterPage: true,

        enlargeFactor: 0.18,

        viewportFraction: 0.88,

        enableInfiniteScroll: true,

        scrollDirection: Axis.horizontal,
      ),

      items: [1, 2, 3].map((i) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(AppSizes.r20),

          child: Image.asset(
            "assets/images/Slider $i.png",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        );
      }).toList(),
    );
  }
}
