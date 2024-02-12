import 'package:flutter/material.dart';

class postMenu extends StatefulWidget {
  const postMenu({super.key});

  @override
  State<postMenu> createState() => _postMenuState();
}

class _postMenuState extends State<postMenu> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              ElevatedButton(onPressed: (){}, child: Text("Add post")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("View post"))
            ],
          ),
        ),
      ),
    );
  }
}
