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
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueAccent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'CW - 01'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  bool isPressed = false;

  void _incrementCounter() {
    setState(() {
    
      _counter++;
    });
  }

  void toggleButton(){

     setState(() {
    
   isPressed = !isPressed;   
    });

    
  }
 

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
     
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        
        title: Text(widget.title),
      ),
      body: Center(

      
        

        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
      
          children: <Widget>[
          
            isPressed ? Image.asset('assets/up.png') : Image.asset('assets/down.png') ,

            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            ElevatedButton(onPressed: _incrementCounter, child:Text('Increment') ),
            ElevatedButton(onPressed: toggleButton, child:Text('Toggle Image') )


          ],

        
        
        )
       
        
      ),

      

   
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
