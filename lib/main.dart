import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/provider.dart';
import 'package:flutter_application_1/views/home.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return ChangeNotifierProvider(create: (context) => ColorProvider(),
      child: const MaterialApp(
        debugShowMaterialGrid: false,
        home: home(),
      ),
    );
  }
}
