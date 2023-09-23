import 'package:flutter/material.dart';
import 'package:restaurant_management_app/widgets/manage_food_widgets/manage_food_listview.dart';

class ManageFoodsPage extends StatefulWidget {
  const ManageFoodsPage({super.key});
  @override
  State<ManageFoodsPage> createState() => _ManageFoodsPageState();
}

class _ManageFoodsPageState extends State<ManageFoodsPage> {
  late Future<List<dynamic>> foods;

  @override
  void initState() {
    super.initState();
    foods = fetchFoods();
  }

  Future<List<dynamic>> fetchFoods() async {
    // Dữ liệu giả
    return [
      {
        'imageUrl':
            'https://realfood.tesco.com/media/images/1400x919-tomato-pasta-6a5a3c8e-f111-490d-805c-9b62fbec8691-0-1400x919.jpg',
        'name': 'Món 1',
        'price': '50000'
      },
      {
        'imageUrl':
            'https://product.hstatic.net/1000389344/product/pizza__5_2023_web_3d49431e76454cdca7276f2ff5ab4efe_master.jpg',
        'name': 'Món 2',
        'price': '60000'
      },
      // ... thêm các món ăn khác
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 219, 219, 215),
      appBar: AppBar(
        title: const Text('Quản lí món ăn'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: foods,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            final foodsList = snapshot.data;
            return ManageFoodListView(foodsList: foodsList!);
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
