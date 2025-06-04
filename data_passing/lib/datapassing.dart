import 'package:data_passing/datagatting.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  var namecontroller = TextEditingController();
  var backdata = "";


  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
           body: Column(
             children: [
               Text(backdata),

               TextField(
                 controller:namecontroller,
                 decoration: InputDecoration(hintText: "Enter Your Name",border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))),
               ),
               ElevatedButton(onPressed: ()async{
                 Map<String ,dynamic> result=await Navigator.push(context, MaterialPageRoute(builder: (context) => MyNextScreen(Name : namecontroller.text),));
                if(result.isNotEmpty){
                  backdata=result["name"];
                  setState(() {

                  });
                }
                 }, child: Text("Submit")),
             ],
           ),
    ));
  }
}
