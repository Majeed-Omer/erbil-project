import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/erbil/presentation/widgets/fine_dining_page/underLinetxtWidget.dart';

import '../../../domain/entities/food.dart';

class FoodListWidget extends StatelessWidget {
  final List<Food> foods;
  const FoodListWidget({
    Key? key,
    required this.foods,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foods.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: underLinetxtWidget(
            t: foods[index].name,
          ),
          onTap: () {},
        );
      },
    );
  }
}
