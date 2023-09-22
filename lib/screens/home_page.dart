import 'package:flutter/material.dart';
import 'package:restaurant_management_app/screens/order_completed_page.dart';
import 'package:restaurant_management_app/screens/order_in_progress_page.dart';
import 'package:restaurant_management_app/widgets/drawer_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Số lượng tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Đơn hàng'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Đang làm'),
              Tab(text: 'Đã xong'),
            ],
          ),
        ),
        drawer: const Drawer(
          child: DrawerListView(),
        ),
        body: const TabBarView(
          children: [
            OrdersInProgressPage(),
            OrdersCompletedPage(),
          ],
        ),
      ),
    );
  }
}
