import 'package:flutter/material.dart';

import '../../models/model.dart';
import '../theme/colors.dart';
import '../theme/dimens.dart';

class MyContainer extends StatelessWidget {
  final String name;
  final String subName;
  final String hours;
  final void Function() onTap;
  const MyContainer({
    required this.name,
    required this.subName,
    required this.hours,
    required this.onTap,
    super.key,
    required this.item,
  });

  final Model item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppDimens.d200,
        width: AppDimens.d300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: item.image,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 70,
                  height: 30,
                  color: Colors.blueAccent,
                  child: Center(child: Text(hours, style: TextStyle(color: AppColors.white),)),
                ),
              ),
              Spacer(),
              Text(
                name,
                style: TextStyle(
                    color: AppColors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subName,
                style: TextStyle(color: Colors.grey, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
