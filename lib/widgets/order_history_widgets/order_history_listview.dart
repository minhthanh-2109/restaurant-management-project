import 'package:flutter/material.dart';
import 'package:restaurant_management_app/models/order.dart';
import 'package:restaurant_management_app/widgets/order_history_widgets/order_history_item.dart';

class OrderHistoryListView extends StatelessWidget {
  final List<Order> orders;
  const OrderHistoryListView({super.key, required this.orders});
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        return OrderHistoryItem(order: orders[index]);
      },
    );
  }
}
