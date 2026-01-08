import 'package:flutter/material.dart';
import 'package:untitled2/mydrawer1.dart';
class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ibrahim(context,"الاعدادات",Icon(Icons.settings),Mydrawer1()),
          ibrahim(context,"السياسات",Icon(Icons.chevron_right),Mydrawer1()),
          ibrahim(context,"حول التطبيق",Icon(Icons.chevron_right),Mydrawer1()),
          ibrahim(context,"التحديثات",Icon(Icons.chevron_right),Mydrawer1()),
          ibrahim(context,"الدعم والمساعدة",Icon(Icons.chevron_right),Mydrawer1()),
          ibrahim(context,"دليل المستخدم",Icon(Icons.chevron_right),Mydrawer1()),
          ibrahim(context,"المطور",Icon(Icons.chevron_right),Mydrawer1()),
          ibrahim(context,"اخرى",Icon(Icons.chevron_right),Mydrawer1()),
        ],
      ),
    );
  }

  Container ibrahim(context,txt,icon,page){
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => page,));
        },
        tileColor: Colors.black54,
        title: Text(txt),
        trailing: icon,
      ),
    );
  }
}
