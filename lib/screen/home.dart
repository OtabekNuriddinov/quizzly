import 'package:flutter/material.dart';
import '/core/config/routes.dart';
import '/core/theme/strings.dart';
import '/core/theme/text_styles.dart';
import '../core/theme/colors.dart';
import '../core/widgets/my_elevated_button.dart';
import '/core/theme/dimens.dart';
import '/core/theme/icons.dart';
import '/core/theme/images.dart';
import '../core/widgets/welcome_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isPressed = false;
  String level = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backColor,
      body: Center(
        child: Container(
          width: AppDimens.d540,
          height: AppDimens.d740,
          decoration: BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.cover,
            image: AppImages.backImage,
          )),
          child: Padding(
            padding: AppDimens.edge206030,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AppIcons.quizzly,
                  AppDimens.sized50,
                  MyWelcomeContainer(),
                  AppDimens.sized50,
                  Text(AppStrings.choosing, style: AppTextStyles.choosingStyle),
                  AppDimens.sized22,
                  SizedBox(
                    width: AppDimens.d300,
                    height: AppDimens.d56,
                    child: MyHomeElevated(
                      text: AppStrings.level1,
                      borderColor: AppColors.white,
                      backColor: Colors.transparent,
                      textColor: AppColors.white,
                      onPressed: (){
                        isPressed = true;
                        if(isPressed){
                          level = "1";
                          Navigator.pushNamed(context, AppRoutes.questioning, arguments: level);
                        }
                      },
                    ),
                  ),
                  AppDimens.sized22,
                  SizedBox(
                    width: AppDimens.d300,
                    height: AppDimens.d56,
                    child: MyHomeElevated(
                      text: AppStrings.level2,
                      borderColor: AppColors.white,
                      backColor: Colors.transparent,
                      textColor: AppColors.white,
                      onPressed: (){
                        isPressed = true;
                        if(isPressed){
                          level = "2";
                          Navigator.pushNamed(context, AppRoutes.questioning, arguments: level);
                        }
                      },
                    ),
                  ),
                  AppDimens.sized22,
                  SizedBox(
                    width: AppDimens.d300,
                    height: AppDimens.d56,
                    child: MyHomeElevated(
                      text: AppStrings.level3,
                      borderColor: AppColors.white,
                      backColor: Colors.transparent,
                      textColor: AppColors.white,
                      onPressed: (){
                        isPressed = true;
                        if(isPressed){
                          level = "3";
                          Navigator.pushNamed(context, AppRoutes.questioning, arguments: level);
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
