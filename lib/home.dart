
import 'package:flutter/material.dart';
import 'package:untitled2/mydrawer.dart';
import 'search_name.dart';
import 'search_number.dart';
import 'more_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  final List<Widget> pages = const [
    MoreScreen(),
    SearchByNameScreen(),
    SearchByNumberScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        title: const Text('يمن فون بوك'),
        centerTitle: true,
      ),
      drawer: Mydrawer(),
      body: pages[index],
      backgroundColor: Colors.white,

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'المزيد',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'بحث بالاسم',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            label: 'بحث بالرقم',
          ),
        ],
      ),
    );
  }
}