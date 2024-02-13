import 'package:flutter/material.dart';
import 'package:kjshoppingapp/welcome_page.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomePage()),
      );
   });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
     return Container(
       width: MediaQuery.of(context).size.width,
       height: MediaQuery.of(context).size.height,
       color: Colors.green[600],
       child: Row(
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 50),
             child: Image.asset(
               'lib/assets/Screenshot 2024-02-07 1931401.png',
               width: 100,
               height: 100,
               fit: BoxFit.contain,
             ),
           ),
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 "nectar",
                 style: TextStyle(
                   fontSize: 45,
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                   decoration: TextDecoration.none,
                 ),
               ),
               Text(
                 "enjoy shopping",
                 style: TextStyle(
                   fontSize: 15,
                   fontWeight: FontWeight.w500,
                   color: Colors.white,
                   letterSpacing: 1.8,
                   decoration: TextDecoration.none,
                 ),
               ),
             ],
           ),
         ],
       ),
     );

  }
}
