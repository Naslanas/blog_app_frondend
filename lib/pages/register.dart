import 'package:blog/Service/blogService.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String Name="",Age="",Mobile="",Address="",Pincode="",Email="",Password="",getName="",getAge="",getMobile="",getAddress="",getPincode="",
  getEmail="",getPass="";
  TextEditingController name=new TextEditingController();
  TextEditingController age=new TextEditingController();
  TextEditingController mobile=new TextEditingController();
  TextEditingController address=new TextEditingController();
  TextEditingController pincode=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController password=new TextEditingController();
  void SendValuesToApi()async{
    getName=name.text.toString();
    getAge=age.text.toString();
    getMobile=age.text.toString();
    getAddress=address.text.toString();
    getPincode=pincode.text.toString();
    getEmail=email.text.toString();
    getPass=password.text.toString();

    final response=await BlogApiService().sendData(getName, getAge, getMobile, getAddress, getPincode, getEmail, getPass);
    if(response["status"]=="success"){
      print("Successfully Added...");
    }
    else{
      print("Error.....");
    }

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Blog App"),
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                TextField(controller: name,
                  decoration: InputDecoration(
                      labelText: "Name",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: age,
                  decoration: InputDecoration(
                      labelText: "age",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: mobile,
                  decoration: InputDecoration(
                      labelText: "Mobile",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: address,
                  decoration: InputDecoration(
                      labelText: "Address",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: pincode,
                  decoration: InputDecoration(
                      labelText: "Pincode",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: email,
                  decoration: InputDecoration(
                      labelText: "email",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(controller: password,
                  decoration: InputDecoration(
                      labelText: "password",
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: SendValuesToApi, child: Text("Register")),
                SizedBox(height: 10,),
                ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back"))
          
          
              ],
            ),
          ),
        ),
      ),
    );
  }
}
