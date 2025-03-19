class Model {
  final int id;
  String name;
  String subName;
  String length;
  String weight;
  String worldwide;
  String text;
  String image;
  String hours;
  Model(
      {required this.id,
      required this.length,
      required this.weight,
      required this.worldwide,
      required this.text,
      required this.name,
      required this.subName,
      required this.image,
      required this.hours});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      id: json['id'],
      name: json['name'],
      subName: json['subName'],
      length: json['length'],
      weight: json['weight'],
      worldwide: json['worldwide'],
      text: json['text'],
      image: json['image'],
      hours: json['hours'],
    );
  }

  Model copyWith({
    int? id,
    String? name,
    String? subName,
    String? length,
    String? weight,
    String? worldwide,
    String? text,
    String? image,
    String? hours
  }){
    return Model(
        id: id ?? this.id,
        length: length ?? this.length,
        weight: weight ?? this.weight,
        worldwide: worldwide ?? this.worldwide,
        text: text ?? this.text,
        name: name ?? this.name,
        subName: subName ?? this.subName,
        image: image ?? this.image,
        hours: hours ?? this.hours,
    );
  }

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
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Model &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name;
  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      subName.hashCode ^
      length.hashCode ^
      weight.hashCode ^
      worldwide.hashCode ^
      text.hashCode ^
      image.hashCode ^
      hours.hashCode;
}
