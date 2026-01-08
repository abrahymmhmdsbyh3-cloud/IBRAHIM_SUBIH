
import 'package:flutter/material.dart';
import 'package:untitled2/ibrahem.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [

          ListTile(
            title: Text('المزيد',style: TextStyle(
              fontSize: 22,
            ),),
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('حول التطبيق'),
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: Text('التحديثات'),
          ),
          ListTile(
            leading: Icon(Icons.support),
            title: Text('الدعم'),
          ),
        ],
      ),
      bottomSheet: Ibrahem(),
    );
  }
}
