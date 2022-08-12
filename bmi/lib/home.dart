import 'package:bmi/result.dart';
import 'package:flutter/material.dart';
import 'conta.dart';
class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  bool isMale=false;
  bool isFemale=false;
  int height=0;
  int weight=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("BMI calculator")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child:Row(
            children: [
              // for male
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                       isMale=true;
                       isFemale=false;
                    });
                   
                    

                  },
                  child: reuseable(
                    ContainerColor:isMale? Colors.blue:Colors.grey,
                    child1: Icon(Icons.male),
                    child2: Text("male"),
                  ),
                ),
              ),
              // for female
              Expanded(
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      isFemale=true;
                      isMale=false;
                    });
                    
                  },
                  child:reuseable(
                    ContainerColor:isFemale? Colors.pink:Colors.grey,
                    child1: Icon(Icons.female),
                    child2: Text("female"),
                  ),
                ),
              )
            ],
          ),),
          // for height
          Expanded(
            child: reuseable(
                    ContainerColor: Colors.blue.shade100,
                    child1:Text("$height cm") ,
                    child2:  Slider(
                  min: 0,
                  max: 220,
                  
                  value: height.toDouble(), 
                   onChanged: (newValue){

                    setState(() {
                      height=newValue.round();
                    });
                    
                  }),
                  ),
          ),
          // for weight
          Expanded(child: 
          reuseable(
                    ContainerColor: Colors.blue.shade100,
                    child1:Text("$weight kg"),
                    child2:  Slider(
                  min: 0,
                  max: 150,
                  
                  value: weight.toDouble(), 
                   onChanged: (newValue){

                    setState(() {
                      weight=newValue.round();
                    });
                    
                  }),
                  ),
              
            ),
        
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: (){


              var result =weight/((height*height)/100);
              var resultDesc;
              if(isMale){
                if(result<20){
                  resultDesc="Under weight";
                }
                else if(result<25){
                  resultDesc="Normal";
                }
                else{
                  resultDesc="obese";
                }

              }
              else{
                if(result<18){
                  resultDesc="Under weight";
                }
                else if(result<25){
                  resultDesc="Normal";
                }
                else{
                  resultDesc="obese";
                }

              }

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Result(result: result,resultDesc: resultDesc,);
              },),);
            }, 
            child: Text("calculate"),
            ),
          )
        ],
      ),

    );
    
  }
}

