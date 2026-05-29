import 'package:carousel_slider/carousel_slider.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';
class HomeBannerList extends StatelessWidget {
  const HomeBannerList({super.key});

  @override
  Widget build(BuildContext context) {
    return        CarouselSlider(
      options: CarouselOptions(
        height: AppSizes.h222,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeStrategy: CenterPageEnlargeStrategy.height,
        scrollDirection: Axis.horizontal,
        viewportFraction: 0.9,
        enlargeFactor: 0.3,
        autoPlayAnimationDuration: Duration(milliseconds: 600),
      ),
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              height: AppSizes.h222,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.asset("assets/images/Slider $i.png"),
            );
          },
        );
      }).toList(),
    );
  }
}
