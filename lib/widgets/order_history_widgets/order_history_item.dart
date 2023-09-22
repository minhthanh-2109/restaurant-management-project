import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:restaurant_management_app/models/order.dart';

class OrderHistoryItem extends StatelessWidget {
  final Order order;
  const OrderHistoryItem({super.key, required this.order});
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   margin: const EdgeInsets.symmetric(vertical: 5),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Colors.grey),
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   child: ListTile(
    //     title: Text('Đơn hàng #${order.id}'),
    //     subtitle: Text('${order.total} VND'),
    //     trailing: Text(DateFormat('HH:mm').format(order.time)),
    //   ),
    // );
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 49, 111, 62),
              Color.fromARGB(255, 37, 147, 58),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(
                  255, 255, 255, 255), // You can adjust the color here
              width: 1.5, // You can adjust the width here
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Đơn hàng #${order.id}',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground)),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  '${order.total} VND',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      DateFormat('HH:mm').format(order.time),
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).colorScheme.onBackground),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      onTap: () {
        // Add your onTap logic here
      },
    );
  }
}
