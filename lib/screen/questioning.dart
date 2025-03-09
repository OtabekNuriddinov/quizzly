import 'dart:async';
import 'package:flutter/material.dart';
import '/core/theme/colors.dart';
import '/core/theme/dimens.dart';
import '/core/theme/strings.dart';
import '/core/widgets/my_elevated_button.dart';
import '/service/quizzly_service.dart';
import '../core/config/routes.dart';
import '../core/theme/text_styles.dart';
import 'package:just_audio/just_audio.dart';

class Questioning extends StatefulWidget {
  final String? level;
  const Questioning({this.level, super.key});

  @override
  State<Questioning> createState() => _QuestioningState();
}

class _QuestioningState extends State<Questioning> {
  int remainingTime = 20;
  late Timer _timer;
  late List<Map<String, dynamic>> questions;
  int currentQuestionIndex = 0;
  int sanoq = 1;
  int correctCount = 0;
  int wrongCount = 0;
  int countPercent = 0;
  String result = "";

  void resultChange(){
    if(countPercent<=60){
      result = "1";
    }
    else if(countPercent>60 && countPercent<=80){
      result = "2";
    }
    else if(countPercent>80 && countPercent<=100){
      result = "3";
    }
  }

  final AudioPlayer _audioPlayer = AudioPlayer();


  @override
  void initState() {
    super.initState();
    _startTimer();
    if (widget.level == "1") {
      questions = QuizzlyService.level1;
      questions.shuffle();
    } else if (widget.level == "2") {
      questions = QuizzlyService.level2;
      questions.shuffle();
    } else {
      questions = QuizzlyService.level3;
      questions.shuffle();
    }
  }

  void _playSound()async{
    try{
      await _audioPlayer.setAsset('assets/sounds/click.mp3');
      _audioPlayer.play();

    }
    catch(e){
      print("Error: $e");
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _audioPlayer.dispose();
    super.dispose();
  }





  @override
  Widget build(BuildContext context) {
    var currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: AppDimens.d540,
            height: AppDimens.d740,
            child: Stack(children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: AppDimens.d540,
                    height: AppDimens.d210,
                    decoration: BoxDecoration(
                      color: AppColors.backColor,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(height: AppDimens.d135),
                  SizedBox(
                    height: AppDimens.d56,
                    width: AppDimens.d300,
                    child: MyHomeElevated(
                      borderColor: AppColors.backColor,
                      text: currentQuestion['answers'][0]['text'],
                      backColor: AppColors.white,
                      textColor: AppColors.black70,
                      onPressed: () {
                        _playSound();
                        if (currentQuestion['answers'][0]['value'] ==
                            currentQuestion['correctAnswer']) {
                          correctCount++;
                          countPercent += 10;
                        } else {
                          wrongCount++;
                        }
                        _nextQuestion();
                      },
                    ),
                  ),
                  AppDimens.sized16,
                  SizedBox(
                    height: AppDimens.d56,
                    width: AppDimens.d300,
                    child: MyHomeElevated(
                      borderColor: AppColors.backColor,
                      text: currentQuestion['answers'][1]['text'],
                      backColor: AppColors.white,
                      textColor: AppColors.black70,
                      onPressed: () {
                        _playSound();
                        if (currentQuestion['answers'][1]['value'] ==
                            currentQuestion['correctAnswer']) {
                          correctCount++;
                          countPercent += 10;
                        } else {
                          wrongCount++;
                        }
                        _nextQuestion();
                      },
                    ),
                  ),
                  AppDimens.sized16,
                  SizedBox(
                    height: AppDimens.d56,
                    width: AppDimens.d300,
                    child: MyHomeElevated(
                      borderColor: AppColors.backColor,
                      text: currentQuestion['answers'][2]['text'],
                      backColor: AppColors.white,
                      textColor: AppColors.black70,
                      onPressed: () {
                        _playSound();
                        if (currentQuestion['answers'][2]['value'] ==
                            currentQuestion['correctAnswer']) {
                          correctCount++;
                          countPercent += 10;
                        } else {
                          wrongCount++;
                        }
                        _nextQuestion();
                      },
                    ),
                  ),
                  AppDimens.sized16,
                  SizedBox(
                    height: AppDimens.d56,
                    width: AppDimens.d300,
                    child: MyHomeElevated(
                      borderColor: AppColors.backColor,
                      text: currentQuestion['answers'][3]['text'],
                      backColor: AppColors.white,
                      textColor: AppColors.black70,
                      onPressed: () {
                        _playSound();
                        if (currentQuestion['answers'][3]['value'] ==
                            currentQuestion['correctAnswer']) {
                          correctCount++;
                          countPercent += 10;
                        } else {
                          wrongCount++;
                        }
                        _nextQuestion();
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
                  ),
                ],
              ),
              Align(
                alignment: Alignment(0, -0.5),
                child: SizedBox(
                  width: AppDimens.d310,
                  height: AppDimens.d170,
                  child: Card(
                    color: AppColors.white,
                    elevation: 1,
                    child: Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${AppStrings.question} $sanoq/10",
                              style: AppTextStyles.counter),
                          SizedBox(height: AppDimens.d30),
                          Text(
                            currentQuestion['question'],
                            style: AppTextStyles.questionStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0, -0.7),
                child: Container(
                  width: AppDimens.d80,
                  height: AppDimens.d80,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.white),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          value: remainingTime / 20,
                          strokeWidth: 5,
                          valueColor: AlwaysStoppedAnimation<Color>(AppColors.backColor),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '$remainingTime s',
                          style: AppTextStyles.timer,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }

  void _nextQuestion() {
    setState(() {
      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
        remainingTime = 20;
        resetTimer();
        sanoq10();
      } else {
        resultChange();
        Navigator.pushReplacementNamed(context, AppRoutes.result, arguments: {
          'correctCount': correctCount,
          'wrongCount': wrongCount,
          'countPercent': countPercent,
          'level': widget.level,
          'result': result
        });

      }
    });
  }

  void resetTimer() {
    _timer.cancel();
    _startTimer();
  }

  void sanoq10() {
    sanoq++;
    ;
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (remainingTime > 0) {
        setState(
          () {
            remainingTime--;
          },
        );
      } else {
        _nextQuestion();
      }
    });
  }
}
