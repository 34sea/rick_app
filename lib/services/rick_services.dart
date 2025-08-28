import 'dart:convert';

import 'package:rick_app/model/rick_model.dart';
import 'package:http/http.dart' as http;
import 'package:rick_app/utils/api.dart';

class RickServices {
  final url = Api();
  Future<List<RickModel>> loadData(String page)async{
    try{
      
      final response = await http.get(Uri.parse('${url.BASE_URL}/${url.character}/$page'));
      if(response.statusCode == 200){
        final List data = json.decode(response.body);
        return data.map((e)=>RickModel.fromJson(e)).toList();
      }else{
        throw Exception(response.statusCode);
      }
    }catch(e){
      throw Exception(e.toString());
    }
  }
}