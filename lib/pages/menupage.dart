import 'package:blog/pages/register.dart';
import 'package:flutter/material.dart';

class Menupage extends StatefulWidget {
  const Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  String Email="",password="",getEmail="",getPass="";
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.lightBlue,
      title: Text("Blog App"),
    ),
      body: Container(
        child: Column(
          children: [
            TextField(controller: email,
              decoration: InputDecoration(
                  labelText: "Email_id",
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),
            TextField(controller: pass,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder()
              ),),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              getEmail=email.text;
              getPass=pass.text;
              setState(() {
                print(getEmail);
                print(getPass);
              });
            }, child: Text("Login")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
            }, child: Text("Register"))
          ],
        ),
      ),

    );
  }
}
