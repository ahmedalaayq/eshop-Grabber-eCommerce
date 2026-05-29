import 'package:eshop/core/theme/app_colors.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:flutter/material.dart';
import '../../../models/category_model.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h150,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: AppSizes.w20),
        itemCount: CategoryModel.categories.length,

        separatorBuilder: (_, __) => SizedBox(width: AppSizes.w16),

        itemBuilder: (context, index) {
          final categoryItem = CategoryModel.categories[index];

          return SizedBox(
            width: AppSizes.w80,

            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(AppSizes.sp14),

                  height: AppSizes.h80,
                  width: AppSizes.h80,

                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF6F6F6),
                  ),

                  child: Image.asset(categoryItem.image, fit: BoxFit.contain),
                ),

                SizedBox(height: AppSizes.h10),

                Text(
                  categoryItem.label,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,

                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(color: AppColors.blackColor),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
