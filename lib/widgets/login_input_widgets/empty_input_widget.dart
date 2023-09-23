import 'package:flutter/material.dart';

class EmptyInputValueWidget extends StatelessWidget {
  const EmptyInputValueWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, right: 3, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Vui lòng điền đầy đủ thông tin đăng nhập!',
            style: TextStyle(
              fontFamily: 'Plus Jakarta Sans',
              color: Theme.of(context).colorScheme.error,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
