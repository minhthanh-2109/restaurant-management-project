import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:restaurant_management_app/models/order.dart';
import 'package:restaurant_management_app/widgets/order_history_widgets/order_history_listview.dart'; // Thư viện để format ngày tháng

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});
  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  DateTime selectedDate = DateTime.now();
  List<Order> orders = [
    Order(
        id: 1, total: 50000, time: DateTime.now().subtract(Duration(hours: 1))),
    Order(
        id: 2, total: 30000, time: DateTime.now().subtract(Duration(hours: 2))),
    Order(
        id: 3, total: 70000, time: DateTime.now().subtract(Duration(hours: 3))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lịch sử đơn hàng'),
        actions: [
          IconButton(
            icon: const Icon(Icons.calendar_today),
            onPressed: _selectDate,
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: orders.isNotEmpty
                ? Text(
                    'Từ ${DateFormat('HH:mm').format(orders.first.time)} đến ${DateFormat('HH:mm').format(orders.last.time)}',
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  )
                : const Text(
                    'Không có đơn hàng nào'), // Hiển thị thông báo khi không có đơn hàng
          ),
          Expanded(child: OrderHistoryListView(orders: orders)),
        ],
      ),
    );
  }

  _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
        // TODO: Lấy danh sách đơn hàng dựa trên ngày đã chọn
      });
  }
}
