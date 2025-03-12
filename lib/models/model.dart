import 'package:flutter/cupertino.dart';

class Model{
  final int id;
  String name;
  String subName;
  String length;
  String weight;
  String worldwide;
  String text;
  AssetImage image;
  Model({ required this.id, required this.length, required this.weight, required this.worldwide, required this.text, required this.name, required this.subName, required this.image});


  @override
  String toString() {
    return "Model(id: $id, length: $length, weight: $weight, worldwide: $worldwide, text: text)";
  }

  @override
  noSuchMethod(Invocation invocation) {
    print("Chaqirilmagan method yoki hususiyat: ${invocation.memberName}");
    return super.noSuchMethod(invocation);
  }

  @override
  int get hashCode => id.hashCode;
}
