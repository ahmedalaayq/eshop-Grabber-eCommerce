import 'package:eshop/core/utils/app_sizes.dart';
import 'package:eshop/features/home/presentation/views/widgets/home_appbar.dart';
import 'package:eshop/features/home/presentation/views/widgets/home_banner_list.dart';
import 'package:eshop/features/home/presentation/views/widgets/home_category_list.dart';
import 'package:eshop/features/home/presentation/views/widgets/product_list.dart';
import 'package:eshop/features/home/presentation/views/widgets/see_all_component.dart';
import 'package:flutter/material.dart';
import 'widgets/basket_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.r20,
        vertical: AppSizes.r20,
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

                /// SeeAllComponent
                SeeAllComponent(),
                SizedBox(height: AppSizes.h17),

                /// ProductList
                ProductList(),

                SizedBox(height: AppSizes.h14),
                BasketComponent(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
