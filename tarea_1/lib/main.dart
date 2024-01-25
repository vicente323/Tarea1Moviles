

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mc Flutter',
       theme: ThemeData(
    useMaterial3: true,

    // Define the default brightness and colors.
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.indigo,
      // ···
      // brightness: Brightness.dark,
    ),

    // Define the default `TextTheme`. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),
    // 
     
    ),
  ),
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor:Colors.lightBlue,
          
          title: Text('Mc Flutter',style: TextStyle(color: Colors.white)),
        ),
        body: Column(


          children: [
              Container(
                  width: (MediaQuery.of(context).size.width),
                  height: 150,
                  padding:  EdgeInsets.all(10.0),
                  margin: const EdgeInsets.all(15),

                  decoration: BoxDecoration(  
                
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid
                      ),
                      borderRadius: BorderRadius.circular(0),
                      color: Colors.white 
                      
                  ),
                  child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                        
                          children: <Widget>[
                            
                            Container(
                              margin: const EdgeInsets.only(top: 1),
                              color: Colors.white,
                              height: 50,
                              child:Row(
                                mainAxisAlignment: MainAxisAlignment.center, //Center Row contents horizontally,
                                crossAxisAlignment: CrossAxisAlignment.center, //Center Row contents vertically,
                                children: [
                                  Icon(Icons.account_circle,color: Colors.black ,size: 50,),
                                  Column(
                                  children: [Text("Flutter McFlutter",style:TextStyle( fontSize: 20),),Text("Experienced App Developer")],
                                    ),
                                  ],
                                  
                                  
                                  
                                  ),
                            ),
                     


                            Container(
                              color: Colors.white,
                              margin: const EdgeInsets.only(top: 5),
                              child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [Text("123 Main Street"),Text("(415) 555-0198")],
                                  
                                  
                                  ),
                            ),
                            Container(
                              color: Colors.white,
                              width: 300,
                              margin: EdgeInsets.only(top:2),
                              child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                               
                     
                                // IconButton(onPressed: (){}, icon:Icon(Icons.phone_android_sharp , color: Colors.black,size: 30)),
                                IconButtonExampleToggle(choise: Icons.accessibility_new),
                                IconButtonExampleToggle(choise: Icons.timer),
                                IconButtonExampleToggle(choise:Icons.phone_android_sharp),
                                IconButtonExampleToggle(choise:Icons.phone_android)
                              ],
                                  
                                  
                                  ),
                            ),
                            
              
                          ],
                        ),
              ),
          
            
            
          ],
        ),
      ),
    );
  }
}

class IconButtonExampleToggle extends StatefulWidget {
  const IconButtonExampleToggle({super.key, required this.choise}); // Modified to add custom icons
  final IconData choise;
  @override
  State<IconButtonExampleToggle> createState() =>_IconButtonExampleStateToggle();
}

class _IconButtonExampleStateToggle extends State<IconButtonExampleToggle> {

  bool state0 = false;


  @override
  Widget build(BuildContext context) {
    
    return Row(  
      
      children: <Widget>[
        IconButton(
          isSelected: state0,
          icon:  Icon(widget.choise ,size: 25),
       
          onPressed: () {
            setState(() {
              state0 = !state0;
            });
          },
        ),

      ],
    );
  }
}