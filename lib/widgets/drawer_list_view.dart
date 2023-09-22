import 'package:flutter/material.dart';
import 'package:restaurant_management_app/screens/manage_foods_page.dart';
import 'package:restaurant_management_app/screens/order_page_history.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.green,
          ),
          child: Image.asset(
            'assets/images/menu.png',
          ),
        ),
        ListTile(
          title: const Text('Lịch sử đặt hàng'),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const OrderHistoryPage(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Quản lí món ăn'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ManageFoodsPage(),
              ),
            );
          },
        ),
        ListTile(
          title: const Text('Thống kê'),
          onTap: () {
            // TODO: Xử lý khi chọn "Thống kê"
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
