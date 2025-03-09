import 'package:flutter/material.dart';

import '../theme/colors.dart';
import '../theme/dimens.dart';
import '../theme/strings.dart';

class MyWelcomeContainer extends StatelessWidget {
  const MyWelcomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.d210,
      width: AppDimens.d390,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              AppStrings.welcome,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  color: AppColors.deepPurple),
            ),
            SizedBox(height: 14),
            Text(
              textAlign: TextAlign.center,
              AppStrings.motivation,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: AppColors.deepPurple),
            )
          ],
        ),
      ),
    );
  }
}
