import 'dart:convert';

import 'package:http/http.dart';

import 'model/model.dart';
class ApiHelper{

  static final ApiHelper _apiHelper=ApiHelper.internal();
  factory ApiHelper()=>_apiHelper;
  ApiHelper.internal();

  static const _baseurl="https://jsonplaceholder.typicode.com/";

  Future <dynamic>getRequest(String routeUrl)async{
    String url=_baseurl+routeUrl;

    try{
      Response response=await get(Uri.parse(url));
      print(response);
      print(response.statusCode);
      if(response.statusCode==200){
        print(response.body);
        return User.fromJson(jsonDecode(response.body));
      }else{
        throw Exception();
      }
    }catch(ex){
      throw Exception(ex);
    }
  }



}