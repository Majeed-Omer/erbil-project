import 'dart:convert';

import '../../../../core/error/exceptions.dart';
import '../models/food_model.dart';
import 'package:http/http.dart' as http;

abstract class FoodRemoteDataSource {
  Future<List<FoodModel>> getAllFoods();
}

const BASE_URL = 'http://192.168.100.80:8000/api/foods/';

class FoodRemoteDataSourceImpl implements FoodRemoteDataSource {
  final http.Client client;

  FoodRemoteDataSourceImpl({required this.client});
  @override
  Future<List<FoodModel>> getAllFoods() async {
    final response = await client.get(
      Uri.parse(BASE_URL),
      headers: {"Content-Type": "application/json"},
    );
    if (response.statusCode == 200) {
      final List decodedJson = json.decode(response.body) as List;
      final List<FoodModel> foodModels = decodedJson
          .map<FoodModel>((jsonFoodModel) => FoodModel.fromJson(jsonFoodModel))
          .toList();
      return foodModels;
    } else {
      print(response.statusCode);
      throw ServerException();
    }
  }
}
