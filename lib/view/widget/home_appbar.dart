import 'package:flutter/material.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appColor.dart';
import 'package:abyansf_asfmanagment_app/utils/style/appStyle.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../screens/notification/views/notification_view.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  final bool showTitle;

  const HomeAppBar({super.key, this.showTitle = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      color: AppColors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: showTitle
            ? [
          // Left: Greeting with Subtitle
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Mirable",
                style: TextStyle(
                  fontSize: AppStyles.fontXL,
                  fontWeight: AppStyles.weightMedium,
                  fontFamily: "Inter",
                  color: AppColors.blackColor,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                "Find the amazing event near you",
                style: TextStyle(
                  fontSize: AppStyles.fontM,
                  fontWeight: AppStyles.weightRegular,
                  fontFamily: "Inter",
                  color: AppColors.blackColor,
                ),
              ),
            ],
          ),
          // Right: Notification Icon
          GestureDetector(
              child: const Icon(Icons.notification_add),
            onTap: (){
                print("ontap");
                Get.to(() => NotificationView());
            },
          ),
        ]
            : [
          // Left: Avatar + Greeting
          Row(
            children: [
              const CircleAvatar(radius: 22),
              const SizedBox(width: 8),
              Text(
                "Hi, Mirable",
                style: TextStyle(
                  fontSize: AppStyles.fontL,
                  fontWeight: AppStyles.weightRegular,
                  fontFamily: "Inter",
                  color: AppColors.blackColor,
                ),
              ),
            ],
          ),

          // Middle: Location Chip
          Container(
            height: 39,
            width: 91,
            decoration: BoxDecoration(
              color: AppColors.greyColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on,
                  size: 16,
                  color: AppColors.lightWhite6,
                ),
                const SizedBox(width: 4),
                Text(
                  'Dubai',
                  style: TextStyle(
                    fontSize: AppStyles.fontS,
                    fontWeight: AppStyles.weightRegular,
                    fontFamily: "Inter",
                    color: AppColors.lightWhite6,
                  ),
                ),
              ],
            ),
          ),

          // Right: Notification Icon
          GestureDetector(
            child: const Icon(Icons.notification_add),
            onTap: (){
              print("ontap");
              Get.to(() => NotificationView());
            },
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
