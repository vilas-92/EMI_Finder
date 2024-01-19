import 'package:fleekup/main.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class WelcomeScreen extends StatefulWidget {
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  var loan_amount = TextEditingController();
  var intr = TextEditingController();
  var tenour = TextEditingController();
  var result = '';


  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Welcome"),

     ),
     body: Container(
       color: Colors.orange.shade100,
       child: Center(
         child: Column(

            //mainAxisAlignment: MainAxisAlignment.center,
           //crossAxisAlignment: CrossAxisAlignment.center,

           children: [
             //Text('Welcome',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.orange),),
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
             }, child: Text('Next')),
             SizedBox(height: 22,),
             Text('Enter Loan Amount'),
             TextField(
               keyboardType: TextInputType.number,
               controller: loan_amount,

             ),
             SizedBox(height: 22,),
             Text('Enter Your Intrestret'),
             TextField(
               keyboardType: TextInputType.number,
               controller: intr,
             ),
             SizedBox(height: 22,),
             Text('Enter Your Tenure in Manth'),
             TextField(
               keyboardType: TextInputType.number,
               controller: tenour,
             ),

             ElevatedButton(onPressed: (){
               var p = double.parse(loan_amount.text.toString());
               var r = double.parse(intr.text.toString())/ 12 / 100;
               var n = double.parse(tenour.text.toString());
               double emi = (p * r * pow(1 + r, n)) / (pow(1 + r, n) - 1);
               print(p);
               print(r+p);
               print(n);
                result = "Your EMI Will Be : "+(emi.round()).toString() ;
               setState(() {

               });
               print(result);

             }, child: Text("Calculate EMI")),


             Padding(padding: EdgeInsets.all(21),
               child:  Text( result,style: TextStyle(fontSize: 20,color: Colors.black),),

             )

           ],

         ),
       ),
     ),
   );
  }
}