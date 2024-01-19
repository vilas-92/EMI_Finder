import 'package:fleekup/Splash_Screen.dart';
import 'package:fleekup/WelcomeScreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Splash_Screen(),
        //WelcomeScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => MyHomeState();

}

class MyHomeState extends State<MyHomePage> {
  var count = 0;
  var no1controller = TextEditingController();
  var no2controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('my EMI Claculator'),

    ),
    body: Container(
      color: Colors.blue.shade200,

      child: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count : $count ',style: TextStyle(fontSize: 30),),
            ElevatedButton(onPressed: (){

              setState(() {
                count++;
                //count = count +1;
                print(count);
              });
            }, child: Text('Increment Count',),),

            Column(
              children: [Text('Enter Number'),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no1controller,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: no2controller,
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    var num1 = int.parse(no1controller.text.toString());
                    var num2 = int.parse(no2controller.text.toString());
                    var add = num1+num2;
                    result = "The sum of $num1 and $num2 is $add";
                    setState(() {

                    });
                  }, child: Text('Add')),
                  ElevatedButton(onPressed: (){
                    var num1 = int.parse(no1controller.text.toString());
                    var num2 = int.parse(no2controller.text.toString());
                    var sub = num1-num2;
                    result = "The Diffrence of $num1 and $num2 is $sub";
                    setState(() {

                    });
                  }, child: Text('sub')),
                  ElevatedButton(onPressed: (){
                    var num1 = int.parse(no1controller.text.toString());
                    var num2 = int.parse(no2controller.text.toString());
                    var mul = num1*num2;
                    result = "The Multiplication of $num1 and $num2 is $mul";
                    setState(() {

                    });
                  }, child: Text('mul')),
                  ElevatedButton(onPressed: (){
                    var num1 = int.parse(no1controller.text.toString());
                    var num2 = int.parse(no2controller.text.toString());
                    var dvid = num1/num2;
                    result = "The division of $num1 and $num2 is ${dvid.toStringAsFixed(2)}";
                    setState(() {

                    });
                  }, child: Text('divd')),

                ],

              ),
            ),
            Padding(padding: EdgeInsets.all(21),
            child: Text(result,style: TextStyle(fontSize: 20,color: Colors.white),),)

          ],
        )

      ),
    ),
  );
  }
}


