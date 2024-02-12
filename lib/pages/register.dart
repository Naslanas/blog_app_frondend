import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text("Blog App"),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: "Name",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: "age",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Mobile",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Address",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: "Pincode",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: "email",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    labelText: "password",
                    border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("Register")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back"))


            ],
          ),
        ),
      ),
    );
  }
}
