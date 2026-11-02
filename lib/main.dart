import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        
          
          backgroundColor: const Color.fromARGB(255, 27, 134, 221),
          foregroundColor: Colors.white,
          centerTitle: true,
        
          title: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.login),
              SizedBox(width: 8),
              Text('sign in'),
             
            ],

          )
            
        ),
        body: Container(
          
           width: double.infinity,
           height: double.infinity,
         decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 1, 50, 90),
                Colors.white,
              ],
            ),
          ),
         child: Padding(
           padding: const EdgeInsets.all(24.0),
           child: Column (
            
            children: [
              SizedBox(height: 100),
              Text(
              'Welcome back!', 
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
               color: Colors.black),
               ),
               Text(
              'Please sign in to continue...',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
           
            )
              
               ),
               SizedBox(height: 100),
               TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.email),
                  hintText: 'example@email.com',
                  icon: Icon(Icons.email),
                  
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ), 
                ),
           
               ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.visibility),
                    hintText: 'Enter your password',
                    icon: Icon(Icons.lock),
                    
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ), 
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                gradient: LinearGradient( colors:
                  [
                    const Color.fromARGB(255, 142, 196, 241),
                    const Color.fromARGB(255, 148, 213, 243)
                  ]
                )
              ),
              child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.transparent,
                  
                 ),
                onPressed: () { },
                child: Text(
                  'sign in'
                ),
               
              
                         ),
            )
            ]
            
             
            
                   ),
         )
      ),
      )
    );

  }
}