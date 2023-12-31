import 'package:flutter/material.dart';
import 'package:restaurant_management_app/screens/login_page.dart';

void main() => runApp(const RestaurantFoodApp());

class RestaurantFoodApp extends StatelessWidget {
  const RestaurantFoodApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurant Food',
      theme:
          // ThemeData().copyWith(
          //   useMaterial3: true,
          //   colorScheme: kColorScheme,
          //   appBarTheme: const AppBarTheme().copyWith(
          //     backgroundColor: kColorScheme.primaryContainer,
          //     foregroundColor: kColorScheme.onBackground,
          //   ),
          //   cardTheme: const CardTheme().copyWith(
          //     color: kColorScheme.secondaryContainer,
          //   ),
          //   textTheme: ThemeData().textTheme.copyWith(
          //         titleLarge: TextStyle(
          //           fontWeight: FontWeight.bold,
          //           color: kColorScheme.onSecondaryContainer,
          //           fontSize: 16,
          //         ),
          //       ),
          //   tabBarTheme: const TabBarTheme().copyWith(
          //     // Customize the TabBar appearance
          //     labelColor:
          //         kColorScheme.onBackground, // Color of the selected tab label
          //     unselectedLabelColor:
          //         Colors.black45, // Color of unselected tab labels
          //     indicator: BoxDecoration(
          //       // Use BoxDecoration to create a full-width underline
          //       border: Border(
          //         bottom: BorderSide(
          //           color: kColorScheme.primary, // Color of the underline
          //           width: 2.0, // Adjust the width of the underline as needed
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          ThemeData(
        primarySwatch: Colors.green,
        // textTheme: ThemeData().textTheme.copyWith(
        //       titleLarge: TextStyle(
        //         fontWeight: FontWeight.bold,
        //         color: kColorScheme.onBackground,
        //         fontSize: 16,
        //       ),
        //     ),
      ),
      home: const LoginPage(),
    );
  }
}
