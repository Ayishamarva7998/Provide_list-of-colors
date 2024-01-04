import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/provider.dart';
import 'package:provider/provider.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ColorProvider>(builder: (context, value, child) => 
       Scaffold(
        backgroundColor: value.design.elementAt(value.theme),
        body: Consumer<ColorProvider>(builder: (context, value, child) => 
           Column(
            children: [
              Center(
                child: ElevatedButton(onPressed: (){
                  value.change();
                }, child: const Text("click here")),
              )
            
            ],
          ),
        ),
      ),
    );
  }
}