import 'package:exam_shablon/core/theme/images.dart';
import 'package:exam_shablon/core/theme/strings.dart';
import 'package:exam_shablon/service/data_source.dart';

import '../models/model.dart';

class AppService{

  // Singleton
  AppService._();
  static final AppService _instance = AppService._();
  factory AppService() => _instance;

  List<Model> _list = [];
  List<Model> get items => _list;

  Future<void> initialize()async{
    final json = await DataSource.convertor();
    _list = json.map((item)=> Model.fromJson(item)).toList();
  }
}


// final List<Model>_list = [
//   Model(id: 1, length: "20-25 m", weight: "50-80 tons", worldwide: "3-4.000 indiv", text: AppStrings.finWhaleText, name: AppStrings.finName, subName: AppStrings.finSubname, image: AppImages.finWhale, hours: "2:15 hrs"),
//   Model(id: 2, length: "13-17 m", weight: "25-40 tons", worldwide: "10-15.000 indiv.", text: AppStrings.humpbackText, name: AppStrings.humpBackName, subName: AppStrings.humbBackSubname, image: AppImages.humpBackWhale, hours: "1:40 hrs"),
//   Model(id: 3, length: "6-9 m", weight: "3-10 tons", worldwide: "10-15.000 indiv.", text: AppStrings.killerText, name: AppStrings.killerName, subName: AppStrings.killerSubname, image: AppImages.killerWhale, hours: "2:20 hrs"),
//   Model(id: 4, length: "7-10 m", weight: "8-10 tons", worldwide: "1 million indiv.", text: AppStrings.minketext, name: AppStrings.minkeName, subName: AppStrings.minkeSubname, image: AppImages.minkeWhale, hours: "2:10 hrs"),
//   Model(id: 5, length: "12-18 m", weight: "30-50 tons", worldwide: "hundreds of thousands", text: AppStrings.spermText, name: AppStrings.spermName, subName: AppStrings.spermSubname, image:  AppImages.spermWhale, hours: "1:50 hrs"),
//   Model(id: 6, length: "20- 30 m", weight: "110-190 tons", worldwide: "3-4.000 indiv.", text: AppStrings.blueText, name: AppStrings.blueName, subName: AppStrings.blueSubname, image: AppImages.blueWhale, hours: "2:00 hrs"),
//   Model(id: 7, length: "15-20 m", weight: "20-30 tons", worldwide: "50-70.000 indiv.", text: AppStrings.seiText, name: AppStrings.seiName, subName: AppStrings.seiSubname, image: AppImages.seiWhale, hours: "1:30 hrs"),
//   Model(id: 8, length: "7-9 m", weight: "6-9 tons", worldwide: "unknown, heavily whaled", text: AppStrings.bottleText, name: AppStrings.bottleName, subName: AppStrings.bottleSubname, image: AppImages.bottleWhale, hours: "1:45 hrs"),
//   Model(id: 9, length: "4-8 m", weight: "2-5 tons", worldwide: "~200.000 indiv.", text: AppStrings.pilotText, name: AppStrings.pilotName, subName: AppStrings.pilotSubname, image: AppImages.pilotWhale, hours: "1:33 hrs"),
//   Model(id: 10, length: "2.5-3 m", weight: "180-275 kg", worldwide: "unknown", text: AppStrings.whiteBreakedText, name: AppStrings.whiteBreakedName, subName: AppStrings.whitebreakedSubname, image: AppImages.whiteBreakedWhale, hours: "2:05 hrs"),
//   Model(id: 11, length: "2.5-2.8 m", weight: "200-230 kg", worldwide: "unknown", text: AppStrings.whiteSidedText, name: AppStrings.whiteSidedName, subName: AppStrings.whiteSidedSubName, image: AppImages.whiteSidedWhale, hours: "1:27 hrs"),
// ];
// List<Model> get items => _list;
