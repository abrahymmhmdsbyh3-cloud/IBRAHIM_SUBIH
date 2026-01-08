import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
class Ibrahem extends StatefulWidget {
  const Ibrahem({super.key});

  @override
  State<Ibrahem> createState() => _IbrahemState();
}

class _IbrahemState extends State<Ibrahem> {
  TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(      ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          color: Colors.red,
          child: Row(
            children: [

              // زر الإرسال
              CircleAvatar(
                backgroundColor: Colors.green,
                child: IconButton(
                  icon: Icon(Icons.send, color: Colors.black45),
                  onPressed: () {

                  },
                ),
              ),


              Expanded(
                child: TextField(
                  textDirection: TextDirection.rtl,
                  controller: controller,
                  maxLines: null,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      icon: Icon(Icons.emoji_emotions_outlined),
                      onPressed: () {

                      },
                    ),

                    prefixIcon: IconButton(
                      icon: Icon(Icons.camera_alt),
                      onPressed: pigkimage,
                    ),
                    prefix: IconButton(
                      icon: Icon(Icons.attach_file),
                      onPressed: pigkimages,
                    ),
                    hintText: "اكتب رسالة",
                    hintTextDirection: TextDirection.rtl,
                    filled: true,
                    fillColor: Colors.black45,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),




            ],
          ),
        ),
      ),
    );
  }
  void pigkimage() async{
    var image =await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      //_image = image;
    });
  }
  final ImagePicker _picker = ImagePicker();
  File? _image;
  Future<void> pigkimages()async{
    final XFile? pickedImage = await _picker.pickImage(source: ImageSource.gallery);
    if(pickedImage !=null){
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }
}
