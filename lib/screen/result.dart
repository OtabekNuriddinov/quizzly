import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '/core/theme/icons.dart';
import '/core/theme/text_styles.dart';
import '/core/config/routes.dart';
import '/core/theme/strings.dart';
import '/core/widgets/my_elevated_button.dart';
import '../core/theme/dimens.dart';
import '/core/theme/colors.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  bool _isAnimationVisible = true;
  @override
  Widget build(BuildContext context) {
    Map map = ModalRoute.of(context)!.settings.arguments as Map;
    int wrong = map['wrongCount'];
    int correct = map['correctCount'];
    int countPercent = map['countPercent'];
    String result = map['result'];

    String animationPath = '';
    if (result == "1") {
      animationPath = "assets/animation/bad_anim.json";
    } else if (result == "2") {
      animationPath = "assets/animation/not_bad_anim.json";
    } else {
      animationPath = "assets/animation/well_anim.json";
      ;
    }
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: AppDimens.d540,
            height: AppDimens.d740,
            child: Stack(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: AppDimens.d540,
                    height: AppDimens.d330,
                    decoration: BoxDecoration(
                      color: AppColors.backColor,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Stack(children: [
                        Center(
                          child: Container(
                            width: AppDimens.d210,
                            height: AppDimens.d210,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.white,
                                )
                              ],
                                shape: BoxShape.circle,
                                color: Colors.purpleAccent,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: AppDimens.d180,
                            height: AppDimens.d180,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.purple.shade200,
                            ),
                          ),
                        ),
                        Center(
                          child: Container(
                            width: AppDimens.d150,
                            height: AppDimens.d150,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: AppColors.white),
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "Your Score",
                                    style: AppTextStyles.resultStyle,
                                  ),
                                  Text(countPercent.toString(),
                                      style: AppTextStyles.hundredStyle)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                  SizedBox(height: AppDimens.d170),
                  SizedBox(
                    height: AppDimens.d56,
                    width: AppDimens.d300,
                    child: MyHomeElevated(
                      borderColor: AppColors.backColor,
                      text: AppStrings.again,
                      backColor: AppColors.white,
                      textColor: AppColors.black70,
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, AppRoutes.questioning,
                            arguments: map['level']);
                      },
                    ),
                  ),
                  SizedBox(height: AppDimens.d25),
                  SizedBox(
                    height: AppDimens.d56,
                    width: AppDimens.d300,
                    child: MyHomeElevated(
                      borderColor: AppColors.backColor,
                      text: AppStrings.home,
                      backColor: AppColors.white,
                      textColor: AppColors.black70,
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, AppRoutes.home);
                      },
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: AppDimens.d540,
                    height: AppDimens.d50,
                    decoration: BoxDecoration(
                      color: AppColors.backColor,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(AppDimens.d30),
                      ),
                    ),
                    child: Center(
                      child: AppIcons.quizzlyLittle,
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment(0, 0),
                child: SizedBox(
                  width: AppDimens.d310,
                  height: AppDimens.d135,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    color: AppColors.white,
                    elevation: 8,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(correct.toString(),
                                  style: AppTextStyles.ten),
                              Text(AppStrings.correct)
                            ],
                          ),
                          SizedBox(width: AppDimens.d56),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(wrong.toString(), style: AppTextStyles.zero),
                              Text(AppStrings.wrong)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.3),
                child: Visibility(
                  visible: _isAnimationVisible,
                  child: SizedBox(
                    width: AppDimens.d310,
                    height: AppDimens.d170,
                    child: Lottie.asset(animationPath, fit: BoxFit.cover,
                        onLoaded: (composition) {
                      Future.delayed(Duration(seconds: 3), () {
                        setState(() {
                          _isAnimationVisible = false;
                        });
                      });
                    }),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
