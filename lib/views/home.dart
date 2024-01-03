import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/provider.dart';
import 'package:provider/provider.dart';


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<homeprovidre>(
      builder: (context, values, child) => Scaffold(
        backgroundColor: values.clr ? Colors.red : Colors.green,
        body: Center(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    values.colorchanging();
                  },
                  child: Text('red')),
              TextButton(
                  onPressed: () {
                    values.colorchanging();
                  },
                  child: Text(
                    'green',
                    style: TextStyle(
                        color: values.clr ? Colors.amber : Colors.blue),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}