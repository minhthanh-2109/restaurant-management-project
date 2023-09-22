import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:restaurant_management_app/models/order.dart';

class OrderCompeltedItem extends StatelessWidget {
  final Order order;

  const OrderCompeltedItem({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    // Card(
    //   margin: const EdgeInsets.all(5),
    //   elevation: 2, //add a slight shadow to the card item
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   color: const Color.fromARGB(255, 144, 238, 144),

    //   child: ListTile(
    //     title: Text(
    //       'Đơn hàng #${order.id}',
    //       style: Theme.of(context).textTheme.titleLarge,
    //     ),
    //     subtitle: Text(
    //       '${order.total} VND',
    //       style: Theme.of(context).textTheme.bodyMedium,
    //     ),
    //     trailing: Text(
    //       DateFormat('HH:mm').format(order.time),
    //       style: Theme.of(context).textTheme.bodySmall,
    //     ),
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
            Text(
              'Đơn hàng #${order.id}',
              style: TextStyle(
                  fontSize: 20,
                  color: Theme.of(context).colorScheme.onBackground,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  '${order.total} VND',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      DateFormat('HH:mm').format(order.time),
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                      ),
                      //       style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      // Add a Container with a border at the bottom
      // Adjust the color and width of the border as needed
      // Here, I'm using the primary color and a width of 1.0
      onTap: () {
        // Add your onTap logic here
      },
    );
  }
}
