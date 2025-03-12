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
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                  image: DecorationImage(fit: BoxFit.cover, image: item.image)),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.play_arrow_outlined,
                        size: 35,
                        color: AppColors.white,
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1, 0.9),
                      child: Container(
                        width: 70,
                        height: 30,
                        color: Colors.blueAccent,
                        child: Center(
                            child: Text(
                          "2.55 hrs",
                          style: TextStyle(color: AppColors.white),
                        )),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1, 0.9),
                      child: Text(
                        item.name,
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: AppColors.white),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-1, 0.9),
                      child: Text(
                        item.subName,
                        style: TextStyle(fontSize: 16, color: Colors.grey),
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
              height: 500,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.blue.shade50,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.height,
                                color: Colors.blue,
                              ),
                              SizedBox(width: 5),
                              Text(item.length),
                              SizedBox(width: 20),
                              Icon(Icons.shopping_basket_outlined,
                                  color: Colors.blue),
                              SizedBox(width: 5),
                              Text(item.weight),
                              SizedBox(width: 20),
                              Icon(Icons.speed_outlined, color: Colors.blue),
                              SizedBox(width: 5),
                              Text(item.worldwide)
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                      Text(item.text),
                      SizedBox(height: 20),
                      Stack(
                        children: [
                          Container(
                            color: Colors.grey,
                            width: double.infinity,
                            height: 2,
                          ),
                          Container(
                            color: Colors.blue,
                            width: 150,
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
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            "4.42",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_back_ios_new, color: Colors.grey, size: 40,),
                          SizedBox(width: 30),
                          Icon(Icons.play_circle, color: Colors.blue, size: 70,),
                          SizedBox(width: 30),
                          Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey, size: 40,)
                        ],
                      )
                    ],
                  ),

                ),
              ),

            ),
          )
        ],
      ),
    ));
  }
}
