import 'package:eshop/core/theme/app_colors.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:eshop/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class BasketComponent extends StatelessWidget {
  const BasketComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppSizes.h74,
      decoration: BoxDecoration(
        borderRadius: .circular(AppSizes.r7),
        color: AppColors.primaryColor,
      ),
      padding: EdgeInsets.symmetric(horizontal: AppSizes.w16),
      child: Row(
        children: [
          SizedBox(
            height: AppSizes.h74,
            width: AppSizes.w180,
            child: Consumer<HomeController>(
              builder:
                  (
                    BuildContext context,
                    HomeController controller,
                    Widget? child,
                  ) {
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              padding: .all(6),
                              height: AppSizes.h50,
                              width: AppSizes.w50,
                              decoration: BoxDecoration(
                                color: AppColors.bgColor,
                                shape: .circle,
                              ),
                              child: Image.asset(
                                controller.basketList[index].image,
                              ),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return SizedBox(width: AppSizes.w10);
                      },
                      itemCount: controller.basketList.length,
                    );
                  },
            ),
          ),
          VerticalDivider(color: Colors.white, indent: 10, endIndent: 10),
          SizedBox(width: AppSizes.w16),
          Expanded(
            child: Text(
              "View Baskets",
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.bgColor,
                fontWeight: .bold,
              ),
            ),
          ),
          SizedBox(width: AppSizes.w10),
          GestureDetector(
            onLongPress: ()=> context.read<HomeController>().clearBasketItems(),
            child: Badge(
              backgroundColor: Color(0xFFFF0019),
              textStyle: TextStyle(fontSize: AppSizes.sp12),
              label: Selector<HomeController, int>(
                builder: (BuildContext context, value, Widget? child) {
                  return Text(
                    value.toString(),
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      color: AppColors.bgColor,
                      fontWeight: .bold,
                    ),
                  );
                },
                selector: (BuildContext p1, p2) {
                  return p2.basketList.length;
                },
              ),
              child: SvgPicture.asset(
                'assets/images/cart.svg',
                colorFilter: ColorFilter.mode(AppColors.bgColor, .srcIn),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
