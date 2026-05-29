import 'package:eshop/core/theme/app_colors.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:eshop/features/home/controller/home_controller.dart';
import 'package:eshop/features/home/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.h290,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: ProductModel.products.length,
        separatorBuilder: (_, __) => SizedBox(width: AppSizes.w16),
        itemBuilder: (context, index) {
          final product = ProductModel.products[index];

          return Container(
            width: AppSizes.w170,
            padding: EdgeInsets.all(AppSizes.r10),
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: BorderRadius.circular(AppSizes.r20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: .05),
                  blurRadius: 10,
                  offset: const Offset(0, 4),
                ),
              ],
            ),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: AppSizes.h130,
                  child: Stack(
                    children: [
                      Container(
                        padding: .all(AppSizes.r16),
                        color: Colors.grey.shade100,
                        child: Center(
                          child: Image.asset(product.image, fit: BoxFit.contain),
                        ),
                      ),

                      Consumer<HomeController>(
                        builder:
                            (BuildContext context, controller, Widget? child) {
                              return Positioned(
                                bottom: 6,
                                right: 0,
                                child: GestureDetector(
                                  onTap: () => controller.addToBasket(product),
                                  child: Container(
                                    padding: EdgeInsets.all(AppSizes.r6),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.primaryColor,
                                    ),
                                    child: Icon(
                                      controller.isProductSelected(product)
                                          ? Icons.close
                                          : Icons.add,
                                      color: Colors.white,
                                      size: AppSizes.r18,
                                    ),
                                  ),
                                ),
                              );
                            },
                      ),
                    ],
                  ),
                ),

                SizedBox(height: AppSizes.h12),

                Text(
                  product.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: AppColors.baseBlack,
                    fontSize: AppSizes.sp16,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(height: AppSizes.h6),

                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.secondaryColor,
                      size: AppSizes.r18,
                    ),

                    SizedBox(width: AppSizes.w4),

                    Text(
                      "${product.rating} ${product.ratingCount}",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: AppSizes.sp13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: AppSizes.h8),

                Text(
                  product.price,
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: AppSizes.sp16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
