import '../../domain/entities/food.dart';

class FoodModel extends Food{
  const FoodModel({int? id,  required String name})
      : super(id: id,name: name);

  factory FoodModel.fromJson(Map<String, dynamic> json) {
    return FoodModel(id: json['id'],  name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name};
  }
}
