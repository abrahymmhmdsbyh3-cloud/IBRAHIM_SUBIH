import 'package:flutter/material.dart';
import 'package:untitled2/home.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          Container(
            child: Column(
              children: [
                SizedBox(height: 200,),
                Center(
                  child: Text("تسجيل دخول",style: TextStyle(
                    fontSize: 30,
                  ),),
                ),
              ],
            ),
            height: 250,
            width: 200,
            decoration: BoxDecoration(),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [

                TextField(

                  textDirection: TextDirection.rtl,
                  controller: user,
                  decoration: InputDecoration(
                    labelText: "اسم المستخدم",
                    fillColor: const Color.fromARGB(255, 100, 10, 200),
                    filled: true,
                    suffixIcon: Icon(Icons.person_2),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),

                  ),
                ),

                SizedBox(height: 10),

                TextField(
                  textDirection: TextDirection.rtl,
                  controller: pass,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "كلمة المرور ",
                    hintTextDirection: TextDirection.rtl,
                    fillColor: const Color.fromARGB(255, 100, 10, 200),
                    filled: true,
                    suffixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40))
                    ),
                  ),
                ),

                SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                    ElevatedButton(
                      child: Text("دخول",style: TextStyle(
                        color: Colors.white,
                      ),),
                      style: ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.black),
                      ),
                      onPressed: () {
                        if (user.text == "ibrahim" && pass.text == "1234") {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text("بيانات غير صحيحة")),
                          );
                        }
                      },
                    ),

                  ],
                ),


              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("هل نسيت كلمة السر؟"),

              Text(" : تواصل معنا"),
              Text("776434235"),
            ],
          ),
        ],
      ),
    );
  }
}