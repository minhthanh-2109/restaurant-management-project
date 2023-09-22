import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:restaurant_management_app/models/order.dart';
import 'package:restaurant_management_app/widgets/order_completed_widgets/order_completed_listview.dart';

class OrdersCompletedPage extends StatefulWidget {
  const OrdersCompletedPage({super.key});
  @override
  State<OrdersCompletedPage> createState() => _OrdersCompletedPageState();
}

class _OrdersCompletedPageState extends State<OrdersCompletedPage> {
  List<Order> completedOrders = [
    Order(
        id: 4,
        total: 40000,
        time: DateTime.now().subtract(Duration(days: 1, hours: 1))),
    Order(
        id: 5,
        total: 55000,
        time: DateTime.now().subtract(Duration(days: 1, hours: 2))),
    Order(
        id: 6,
        total: 65000,
        time: DateTime.now().subtract(Duration(days: 1, hours: 3))),
  ]; // Danh sách đơn hàng đã hoàn thành với dữ liệu giả

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: completedOrders.isNotEmpty
                ? Text(
                    'Từ ${DateFormat('HH:mm').format(completedOrders.first.time)} đến ${DateFormat('HH:mm').format(completedOrders.last.time)}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  )
                : const Text(
                    'Không có đơn hàng nào'), // Hiển thị thông báo khi không có đơn hàng
          ),
          Expanded(
              child: OrderCompletedListView(completedOrders: completedOrders)),
        ],
      ),
    );
  }
}
