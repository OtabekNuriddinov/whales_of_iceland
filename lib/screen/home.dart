import 'package:exam_shablon/core/config/routes.dart';
import 'package:exam_shablon/core/theme/colors.dart';
import 'package:exam_shablon/core/theme/text_styles.dart';
import 'package:exam_shablon/service/app_service.dart';
import 'package:flutter/material.dart';

import '../core/theme/strings.dart';
import '../core/widgets/my_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  AppService appService = AppService();
  int requiredIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ListView.builder(
            itemCount: appService.items.length,
            itemBuilder: (context, index) {
              final item = appService.items[index];
              return Padding(
                padding: const EdgeInsets.only(top: 10),
                child: MyContainer(
                  item: item,
                  name: item.name,
                  subName: item.subName,
                  hours: "2.55 hrs",
                  onTap: (){
                    requiredIndex = index;
                    Navigator.pushNamed(context, AppRoutes.detail, arguments: {"index": requiredIndex});
                  },
                ),
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
    );
  }


  BottomNavigationBar _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.white,
        onTap: (page){
        if(page==1){
          Navigator.pushNamed(context, AppRoutes.safety);
        }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.question_mark_outlined), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: "")
        ],
    );
  }


  AppBar _appBar() {
    return AppBar(
      title: Text(AppStrings.guides, style: AppTextStyles.guides),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.input,
            color: Colors.grey,
          ),
        )
      ],
    );
  }
}

