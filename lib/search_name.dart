

import 'package:flutter/material.dart';

class SearchByNameScreen extends StatelessWidget {
  const SearchByNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('بحث بالاسم'),
      centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'اكتب الاسم',
                prefixIcon: Icon(Icons.person_search),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(

                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.red),
                  padding: WidgetStatePropertyAll(EdgeInsets.symmetric(horizontal: 10,vertical: 5)),

                ),


                onPressed: () {

                }, child: Text("بحث ")),
            const SizedBox(height: 20),
            Center(child: const Text('نتائج البحث ستظهر هنا')),
          ],
        ),
      ),
    );
  }
}
