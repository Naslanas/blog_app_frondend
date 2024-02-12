import 'package:blog/Service/blogService.dart';
import 'package:blog/pages/register.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Menupage extends StatefulWidget {
  const Menupage({super.key});

  @override
  State<Menupage> createState() => _MenupageState();
}

class _MenupageState extends State<Menupage> {
  String getEmail="",getPass="";
  TextEditingController email=new TextEditingController();
  TextEditingController pass=new TextEditingController();

  void SendApi()async {
    getEmail=email.text;
    getPass=pass.text;
    final response = await BlogApiService().logInAPi(getEmail, getPass);
    if (response["status"]=="success") {
      // String userId=response["userdata"]["_id"].toString();
      // SharedPreferences preferences=await SharedPreferences.getInstance();
      // preferences.setString("userId", userId);
      print("Successfully login");
    }
    else if(response["status"]=="Invalid email id"){
      print("Invalid email id");
    }
    else{
      print("Invalid password");
    }
  }
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
            ElevatedButton(onPressed: SendApi, child: Text("Login")),
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
