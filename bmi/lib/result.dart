
import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  var result;
  var resultDesc;
  Result({
  Key? key,
  required this.result,
  required this.resultDesc
  
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(result.toString()),
            Text(resultDesc),
          ],
        ),
      ),
    );
    
  }
}