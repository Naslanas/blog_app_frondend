import 'dart:convert';

import 'package:http/http.dart' as http;
class BlogApiService{
  Future<dynamic>logInAPi(String email,String password)async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://192.168.43.153:3001/api/blog/login");
    var response= await client.post(apiUrl,
    headers: <String,String>{
      "Content-Type":"application/json;charset=UTF-8"
    },
    body:jsonEncode(<String,String>{
      "email": email,
      "password": password
    })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failure to log in");
    }
  }
  Future<dynamic>sendData(String name,String age,String mobile,String address,String pincode,String email,String password)async{
    var client=http.Client();
    var apiUrl=Uri.parse("http://192.168.43.153:3001/api/blog/register");
    var response=await client.post(apiUrl,
    headers: <String,String>{
      "Content-Type":"application/json;charset=UTF-8"
    },
    body: jsonEncode(<String,String>{
      "name": name,
      "age": age,
      "mobile": mobile,
      "address": address,
      "pincode": pincode,
      "email": email,
      "password": password,
    })
    );
    if(response.statusCode==200){
      return json.decode(response.body);
    }
    else{
      throw Exception("failure to add");
    }
  }
}