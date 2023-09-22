import 'package:flutter/material.dart';

class ManageFoodItem extends StatelessWidget {
  final dynamic food;
  const ManageFoodItem({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.symmetric(vertical: 5),
          height: 130,
          child: Row(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      food['imageUrl'],
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          food['name'],
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text('${food['price']} VND'),
                      ],
                    ),
                  ),
                  //
                ],
              ),
              const Spacer(),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.edit),
                    onPressed: () {
                      // TODO: Xử lý chỉnh sửa món ăn
                    },
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    onPressed: () {
                      // TODO: Xử lý xóa món ăn
                    },
                  ),
                ],
              ),
            ],
          )
          // ListTile(
          //   leading: Image.network(
          //     food['imageUrl'],
          //     width: 100,
          //     height: 100,
          //     fit: BoxFit.cover,
          //   ),
          //   title: Text(food['name']),
          //   subtitle: Text('${food['price']} VND'),
          //   trailing: Row(
          //     mainAxisSize: MainAxisSize.min,
          //     children: [
          //       IconButton(
          //         icon: const Icon(Icons.edit),
          //         onPressed: () {
          //           // TODO: Xử lý chỉnh sửa món ăn
          //         },
          //       ),
          //       IconButton(
          //         icon: const Icon(Icons.delete),
          //         onPressed: () {
          //           // TODO: Xử lý xóa món ăn
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          ),
    );
  }
}
