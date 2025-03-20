import '/service/data_source.dart';

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
