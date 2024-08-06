import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      appBar: AppBar(leading: Icon(Icons.arrow_back),
        title:  Text('Verification'),titleTextStyle:TextStyle(fontWeight: FontWeight.bold) ,actions: [
        
      ], ),
      backgroundColor: Colors.white,
      body: Padding(padding: EdgeInsets.only(left: 50,right: 50,bottom: 20,top: 20),
    child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Enter your mobile number to enable 2 ',style: TextStyle(color: Colors.grey,fontSize: 15),),
          Text('step verification',style: TextStyle(color: Colors.grey,fontSize: 15),),
          SizedBox(
            height: 30,
            width: 300,
          ),
          Text('Enter your mobile number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          SizedBox(
            height: 10,
            width: 200,
            ),
           Text('Mobile No',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),), 
           Padding(padding: EdgeInsets.only(left: 200,bottom:10),
           ),
           TextFormField(
            
           
            decoration: InputDecoration(hintText: 'Mobile no',enabledBorder: OutlineInputBorder()),
           ),
          
          Padding(padding: EdgeInsets.only(left: 100,bottom:20)
           
           ),
           Container(
            
             height: 40,
            width: 500,
            decoration: BoxDecoration(color: Colors.black),
            padding: EdgeInsets.only(left: 120,top: 5),
            child: Text('continue',style: TextStyle(color: Colors.white,fontSize: 15),),
           ),
        ],
      ),
      
      ),
      
    );
  }
}