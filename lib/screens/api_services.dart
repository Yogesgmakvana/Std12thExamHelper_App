import 'dart:convert';

import 'package:std12th_board/screens/user_model.dart';
import 'package:http/http.dart' as http;
class ApiServices {

Future<List<UserModel>>fetchData() async {
  final response=await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'),);

  if(response.statusCode == 200){
    List<dynamic> data=jsonDecode(response.body);
    return data.map((json)=>UserModel.fromJson(json)).toList();
  }else{
    throw Exception('failed to Load Details!');
  }

}



}
