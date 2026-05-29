import 'package:eshop/core/theme/app_colors.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:eshop/features/home/controller/home_controller.dart';
import 'package:eshop/features/home/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset("assets/images/motocycle_icon.svg"),
            SizedBox(width: AppSizes.w10),
            Text(
              '61 Hopper street..',
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: AppColors.blackColor,
                fontWeight: .bold,
              ),
            ),
            SizedBox(width: AppSizes.w10),
            Icon(Icons.arrow_drop_down, color: AppColors.blackColor),
          ],
        ),
        Consumer<HomeController>(
          builder: (context, HomeController controller, _) {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                SvgPicture.asset(
                  "assets/images/cart.svg",
                  height: AppSizes.h35,
                  width: AppSizes.w35,
                ),

                if (controller.basketList.isNotEmpty)
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppSizes.w6,
                        vertical: AppSizes.h2,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(AppSizes.r20),
                      ),
                      constraints: BoxConstraints(
                        minWidth: AppSizes.w18,
                        minHeight: AppSizes.h18,
                      ),
                      child: Center(
                        child: Text(
                          controller.basketList.length.toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: AppSizes.sp10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
      ],
    );
  }
}
