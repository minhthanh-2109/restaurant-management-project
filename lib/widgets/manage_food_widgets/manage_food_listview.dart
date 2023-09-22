import 'package:flutter/material.dart';
import 'package:restaurant_management_app/widgets/manage_food_widgets/manage_food_item.dart';

class ManageFoodListView extends StatelessWidget {
  final List<dynamic> foodsList;
  const ManageFoodListView({super.key, required this.foodsList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodsList.length,
      itemBuilder: (context, index) {
        final food = foodsList[index];
        return ManageFoodItem(food: food);
      },
    );
  }
}
