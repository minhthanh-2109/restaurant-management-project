import 'package:flutter/material.dart';
import 'package:restaurant_management_app/models/order.dart';
import 'package:restaurant_management_app/widgets/order_completed_widgets/order_completed_item.dart';

class OrderCompletedListView extends StatelessWidget {
  final List<Order> completedOrders;
  const OrderCompletedListView({super.key, required this.completedOrders});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: completedOrders.length,
      itemBuilder: (context, index) {
        final order = completedOrders[index];
        return OrderCompeltedItem(
          order: order,
        );
      },
    );
  }
}
