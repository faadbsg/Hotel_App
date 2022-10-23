import 'package:flutter/material.dart';
import 'package:ui_hotels/hotel_section.dart';
import 'package:ui_hotels/my_app_bar.dart';
import 'package:ui_hotels/search_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SearchSection(),
            HotelSection(),
          ],
        ),
      ),
    );
  }
}
