import 'package:eshop/core/theme/app_colors.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';
class SeeAllComponent extends StatelessWidget {
  const SeeAllComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Text(
          "Fruits",
          style: TextStyle(
            color: AppColors.baseBlack,
            fontSize: AppSizes.sp16,
            fontWeight: .w600,
          ),
        ),
        Text(
          "See All",
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: AppSizes.sp14,
            fontWeight: .w600,
          ),
        ),
      ],
    );
  }
}
