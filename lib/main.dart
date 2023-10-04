import 'dart:ui';

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

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: Stack(
        children : [
          Container(
          width: double.infinity,
          height : double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                     //image: AssetImage('assets/images/gradient.png'),
                     image: AssetImage('assets/images/food.jpg'),
                    fit : BoxFit.fitHeight
        )
    )
        ),


             Padding(
               padding: const EdgeInsets.only(top: 120, left: 35),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(20),
                 child: BackdropFilter(
                   filter : ImageFilter.blur(
                     sigmaX:20,
                       sigmaY : 20
                   ),
                   child: Container(
                    width: 300,
                    height : 350,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white.withOpacity(0.45),
                        border: Border.all(color: Colors.black12.withOpacity(0.1),
                        width: 1.7),
                    ),
            ),
                 ),
               ),
             ),




      ]
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
