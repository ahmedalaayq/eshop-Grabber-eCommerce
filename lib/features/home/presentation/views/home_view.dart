import 'package:animate_do/animate_do.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:eshop/features/home/controller/home_controller.dart';
import 'package:eshop/features/home/presentation/views/widgets/home_appbar.dart';
import 'package:eshop/features/home/presentation/views/widgets/home_banner_list.dart';
import 'package:eshop/features/home/presentation/views/widgets/home_category_list.dart';
import 'package:eshop/features/home/presentation/views/widgets/product_list.dart';
import 'package:eshop/features/home/presentation/views/widgets/see_all_component.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'widgets/basket_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.r20,
        vertical: AppSizes.r16,
      ),
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// Home AppBar
                FadeInDown(
                  duration: const Duration(milliseconds: 500),
                  child: const HomeAppbar(),
                ),

                SizedBox(height: AppSizes.h20),

                /// Banner
                FadeIn(
                  duration: const Duration(milliseconds: 700),
                  child: const HomeBannerList(),
                ),

                SizedBox(height: AppSizes.h24),

                /// Categories
                SlideInLeft(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeOutCubic,
                  from: 80,
                  child: const HomeCategoryList(),
                ),

                SizedBox(height: AppSizes.h20),

                /// See All
                FadeInUp(
                  duration: const Duration(milliseconds: 650),
                  child: const SeeAllComponent(),
                ),

                SizedBox(height: AppSizes.h20),

                /// Products
                SlideInUp(
                  duration: const Duration(milliseconds: 750),
                  curve: Curves.easeOutQuart,
                  from: 120,
                  child: const ProductList(),
                ),

                SizedBox(height: AppSizes.h20),

                /// Basket
                Selector<HomeController, int>(
                  selector: (_, controller) =>
                  controller.basketList.length,
                  builder: (context, count, child) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      transitionBuilder: (child, animation) {
                        return SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, 1),
                            end: Offset.zero,
                          ).animate(animation),
                          child: FadeTransition(
                            opacity: animation,
                            child: child,
                          ),
                        );
                      },
                      child: count > 0
                          ? FadeInUp(
                        key: const ValueKey("basket"),
                        duration:
                        const Duration(milliseconds: 500),
                        curve: Curves.easeOut,
                        child: const BasketComponent(),
                      )
                          : const SizedBox.shrink(),
                    );
                  },
                ),

                SizedBox(height: AppSizes.h20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}