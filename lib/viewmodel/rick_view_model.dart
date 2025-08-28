import 'package:flutter/material.dart';
import 'package:rick_app/model/rick_model.dart';
import 'package:rick_app/services/rick_services.dart';

class RickViewModel extends ChangeNotifier {
  final RickServices _rickServices = RickServices();
  List<RickModel>? _dados = null;
  bool _isLoading = false;
  String? _errorMsg = null;

  List<RickModel>? get dados  => _dados;
  bool get isLoading => _isLoading;
  String? get errorMsg => _errorMsg;

  Future<void> datas(String page)async{
    _isLoading = true;
    _errorMsg = null;
    notifyListeners();
    try{
      _dados = await _rickServices.loadData(page);  
    }catch(e){
      _errorMsg = e.toString();
    }finally{
      _isLoading = false;
      notifyListeners();
    }
  }
}