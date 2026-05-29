import 'package:eshop/core/theme/app_colors.dart';
import 'package:eshop/core/utils/app_sizes.dart';
import 'package:eshop/features/home/controller/home_controller.dart';
import 'package:eshop/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int _currentIndex = 0;

  List<Map<String, dynamic>> navbarItems = [
    {"icon": Icons.home, "label": "Home"},
    {"icon": Icons.favorite_outline, "label": "Favorite"},
    {"icon": Icons.search, "label": "Search"},
    {"icon": Icons.person_outline, "label": "Profile"},
    {"icon": Icons.menu, "label": "Menu"},
  ];

  static final List<Widget> _views = [
    ChangeNotifierProvider(
        create: (context)=>HomeController(),
        child: const HomeView()),
    Center(child: Text('Favorite View',style: TextStyle(
      fontSize: AppSizes.sp20,fontWeight: .bold
    ),)),
    Center(child: Text('Search View',style: TextStyle(
      fontSize: AppSizes.sp20,fontWeight: .bold
    ),)),
    Center(child: Text('Profile View',style: TextStyle(
      fontSize: AppSizes.sp20,fontWeight: .bold
    ),)),
    Center(child: Text('Menu View',style: TextStyle(
      fontSize: AppSizes.sp20,fontWeight: .bold
    ),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _views[_currentIndex]),

      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.r20,
          vertical: AppSizes.r10,
        ),
        child: Container(
          height: AppSizes.h90,
          padding: EdgeInsets.symmetric(horizontal: AppSizes.r12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppSizes.r24),
            boxShadow: [
              BoxShadow(
                blurRadius: 20,
                offset: const Offset(0, 6),
                color: Colors.black.withValues(alpha: 0.08),
              ),
            ],
          ),

          child: Row(
            children: List.generate(navbarItems.length, (index) {
              final bool isSelected = index == _currentIndex;

              return Expanded(
                child: InkWell(
                  borderRadius: BorderRadius.circular(AppSizes.r16),
                  onTap: () {
                    setState(() {
                      _currentIndex = index;
                    });
                  },

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        margin: EdgeInsets.only(bottom: AppSizes.h8),
                        height: AppSizes.h4,
                        width: isSelected ? AppSizes.w30 : 0,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),

                      Icon(
                        navbarItems[index]['icon'],
                        size: AppSizes.h25,
                        color: isSelected
                            ? AppColors.primaryColor
                            : Colors.grey,
                      ),

                      SizedBox(height: AppSizes.h4),

                      Text(
                        navbarItems[index]['label'],
                        style: TextStyle(
                          color: isSelected
                              ? AppColors.primaryColor
                              : Colors.grey,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
