import 'package:flutter/material.dart';



class reuseable extends StatelessWidget {

  Color ContainerColor;
  Widget child1;
  Widget child2;

  reuseable({
    Key? key,
    required this.ContainerColor,
    required this.child1,
    required this.child2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      color: ContainerColor,
      borderRadius: BorderRadius.circular(10)
              
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        child1,
        child2,
      ],
    ),
      
              
                );
  }
}

