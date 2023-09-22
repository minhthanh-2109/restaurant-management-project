import 'package:flutter/material.dart';

class FoodInProgressItem extends StatelessWidget {
  final dynamic food;
  const FoodInProgressItem({
    super.key,
    required this.food,
  });

  @override
  Widget build(BuildContext context) {
    // return //Card(
    //   margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
    //   shape: RoundedRectangleBorder(
    //     borderRadius: BorderRadius.circular(8),
    //   ),
    //   color: const Color.fromARGB(255, 162, 188, 167),
    //   elevation: 3,
    // child: ListTile(
    //   title: Text(
    //     '#${food['id'] ?? 'N/A'}',
    //     style: Theme.of(context).textTheme.titleLarge,
    //   ),
    //   subtitle: Text(
    //     '${food['price'] ?? '0'} | ${food['quantity'] ?? '0'}',
    //     style: Theme.of(context).textTheme.bodyMedium,
    //   ),
    //   trailing: Text(
    //     food['createdAt'] ?? 'N/A',
    //     style: Theme.of(context).textTheme.bodySmall,
    //   ),
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
            Text('#${food['id'] ?? 'N/A'}',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onBackground)),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                Text(
                  '${food['price'] ?? '0'} | ${food['quantity'] ?? '0'}',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground),
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      food['createdAt'] ?? 'N/A',
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
