import 'package:animate_do/animate_do.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:eshop/features/home/controller/home_controller.dart';
import 'package:eshop/features/home/models/product_model.dart';
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
              children: [
                /// homeAppBar
                HomeAppbar(),
                SizedBox(height: AppSizes.h20),

                /// homeBannerList
                HomeBannerList(),
                SizedBox(height: AppSizes.h20),
                HomeCategoryList(),
                SizedBox(height: AppSizes.h17),

                /// SeeAllComponent
                SeeAllComponent(),
                SizedBox(height: AppSizes.h17),

                /// ProductList
                SlideInDown(
                  curve: Curves.easeInOut,
                    duration: Duration(milliseconds: 700),
                    child: ProductList()),

                SizedBox(height: AppSizes.h14),
                SlideInUp(
                  curve: Curves.easeInOut,
                  duration: const Duration(milliseconds: 700),
                  child: Selector<HomeController, int>(
                    selector: (_, controller) => controller.basketList.length,
                    builder: (context, count, child) {
                      return AnimatedSwitcher(
                        duration: const Duration(milliseconds: 300),
                        child: count > 0
                            ? BasketComponent()
                            : const SizedBox.shrink(),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
