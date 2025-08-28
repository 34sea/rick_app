import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:rick_app/viewmodel/rick_view_model.dart';

class RickView extends StatefulWidget{
  RickView({super.key});
  State<RickView> createState()=> _RickViewState();
}

class _RickViewState extends State<RickView>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<RickViewModel>(context, listen: false).datas("1");
  }
  @override
  Widget build(BuildContext context) {
    final dados = Provider.of<RickViewModel>(context);
    return Scaffold(
      body: dados.isLoading?Center(
        child: CircularProgressIndicator(),
      ):dados.errorMsg!=null?Center(
        child: Text("Error: ${dados.errorMsg}"),
      ):Center(
        child: Text("data"),
      ),
    );
  }
}