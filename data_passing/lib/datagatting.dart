import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyNextScreen extends StatefulWidget {
  final String Name;
  const MyNextScreen({super.key, required this.Name});

  @override
  State<MyNextScreen> createState() => _MyNextScreenState();
}

class _MyNextScreenState extends State<MyNextScreen> {
  var namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
     child: Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.red,
         title: Text("data"),
       ),

       body: Column(
          children: [
            Text(widget.Name),

            TextField(
              controller: namecontroller,
              decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
            ),
            ElevatedButton(onPressed: () {
              Navigator.pop(context,{"name":namecontroller.text});

            }, child: Text("back"))
          ],
       ),
     ),

    );
  }
}
