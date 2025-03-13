import 'package:exam_shablon/core/theme/dimens.dart';
import 'package:exam_shablon/core/theme/icons.dart';
import 'package:exam_shablon/core/theme/text_styles.dart';
import 'package:exam_shablon/service/app_service.dart';
import 'package:flutter/material.dart';

import '../core/theme/colors.dart';
import '../models/model.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  AppService appService = AppService();
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Map map = ModalRoute.of(context)?.settings.arguments as Map;
    int index = map['index'];
    Model item = appService.items[index];
    return Scaffold(
        body: Center(
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0, -1),
            child: Container(
              width: double.infinity,
              height: AppDimens.d300,
              decoration: BoxDecoration(
                  color: AppColors.blue,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  image: DecorationImage(fit: BoxFit.cover, image: item.image)),
              child: Padding(
                padding: AppDimens.p40,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: backButton(context),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: AppDimens.d70,
                        height: AppDimens.d30,
                        color: Colors.blueAccent,
                        child: Center(
                          child: Text(
                            item.hours,
                            style: TextStyle(color: AppColors.white),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child:
                          Text(item.name, style: AppTextStyles.itemNameStyle),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        item.subName,
                        style: AppTextStyles.subNameStyle,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0, 1),
            child: Container(
              width: double.infinity,
              height: AppDimens.d500,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: AppDimens.r30),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: AppDimens.p30,
                  child: Column(children: [
                    Container(
                      width: double.infinity,
                      height: AppDimens.d50,
                      decoration: BoxDecoration(
                        borderRadius: AppDimens.r20,
                        color: AppColors.blueShade,
                      ),
                      child: Padding(
                        padding: AppDimens.pAll10,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppIcons.length,
                            AppDimens.w5,
                            Text(item.length),
                            AppDimens.w20,
                            AppIcons.weight,
                            AppDimens.w5,
                            Text(item.weight),
                            AppDimens.w20,
                            AppIcons.speed,
                            AppDimens.w5,
                            Text(item.worldwide)
                          ],
                        ),
                      ),
                    ),
                    AppDimens.h30,
                    Text(item.text),
                    AppDimens.h20,
                    Stack(
                      children: [
                        Container(
                          color: AppColors.grey,
                          width: double.infinity,
                          height: 2,
                        ),
                        Container(
                          color: AppColors.blue,
                          width: AppDimens.d150,
                          height: 2,
                        )
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "2.12",
                          style: TextStyle(color: AppColors.grey),
                        ),
                        Spacer(),
                        Text(
                          "4.42",
                          style: TextStyle(color: AppColors.grey),
                        )
                      ],
                    ),
                    AppDimens.h5,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: () {}, icon: AppIcons.toLeft),
                        AppDimens.w30,
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isPressed = !isPressed;
                              });
                            },
                            icon: isPressed ? AppIcons.play : AppIcons.pause),
                        AppDimens.w30,
                        IconButton(onPressed: () {}, icon: AppIcons.toRight)
                      ],
                    )
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  IconButton backButton(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(
        Icons.play_arrow_outlined,
        color: AppColors.white,
      ),
    );
  }
}
