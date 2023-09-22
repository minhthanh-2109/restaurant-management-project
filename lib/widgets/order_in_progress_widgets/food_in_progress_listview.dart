import 'package:flutter/material.dart';
import 'package:restaurant_management_app/widgets/order_in_progress_widgets/food_in_progress_item.dart';

class FoodInProgressListView extends StatelessWidget {
  final List<dynamic> foodList;
  const FoodInProgressListView({super.key, required this.foodList});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: foodList.length,
      itemBuilder: (context, index) {
        final food = foodList[index];
        return FoodInProgressItem(
          food: food,
        );
      },
    );
  }
}
