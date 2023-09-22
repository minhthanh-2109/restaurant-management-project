import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:restaurant_management_app/widgets/order_in_progress_widgets/food_in_progress_listview.dart';

class OrdersInProgressPage extends StatelessWidget {
  const OrdersInProgressPage({super.key});

  Future<List<dynamic>> fetchFoods() async {
    final response = await http.get(
        Uri.parse('https://64f7304d9d775408495341a3.mockapi.io/api/v1/foods'));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load foods');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<dynamic>>(
      future: fetchFoods(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          final foods = snapshot.data;
          return FoodInProgressListView(foodList: foods!);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
