import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
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

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body:Stack(
        children: [
          Container(
              height:double.infinity,
              width:double.infinity,
              child: Image.asset('assets/images/img.jpeg',)),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Padding(
                padding: const EdgeInsets.only(bottom: 11),
                child: Row(
                  children: [
                    SizedBox(width: 100,),
                    //Icon(Icons.camera,color: Colors.blueAccent,      size: 50,),
                    FaIcon(FontAwesomeIcons.facebook,color: Colors.lightBlueAccent,size: 50,),
                    SizedBox(width: 20,),
                    FaIcon(FontAwesomeIcons.clock,color: Colors.cyan,size: 50,),
                    SizedBox(width: 20,),
                    FaIcon(FontAwesomeIcons.calendar,color: Colors.yellow,size: 50,),
                    SizedBox(width: 20,),
                    FaIcon(FontAwesomeIcons.phoneSquare,color: Colors.white,size: 50,),
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 65,right: 65,bottom: 65,top: 25),
                child: TextField(

                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.orange,
                        width: 2,
                      )
                    ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,
                          )
                      ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 14,top: 8.0,bottom: 8),
                      child: FaIcon(FontAwesomeIcons.google,size: 30,),
                    ),
                    suffixIcon: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 150,),
                        FaIcon(FontAwesomeIcons.microphone,color: Colors.orange,),
                        SizedBox(width: 30,),
                        FaIcon(FontAwesomeIcons.camera,color: Colors.white,)
                      ],
                    )
                  ),
                ),
              )
            ],
          )
          
        ],
      )
    );
  }
}
