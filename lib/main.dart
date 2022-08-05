
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget { 
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom sheet'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                showModalBottomSheet(
                  backgroundColor: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(width*0.04),
                      topRight:Radius.circular(width*0.04),
                    )
                  ),
                  context: context, 
                  builder: (context)=>Container(
                    width: width,
                    height: height *0.3,
                    
                    child: Padding(
                      padding:  EdgeInsets.symmetric(
                        horizontal: width*0.03, 
                        vertical: height*0.01
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:const [
                              Text(
                                'Delete', 
                                style:TextStyle(
                                  fontSize: 22,
                                  fontWeight:FontWeight.bold,
                                ),
                              ),

                              Text(
                                'Do you wan\'t delete it ?', 
                                style:TextStyle(
                                  fontSize: 18,
                                  fontWeight:FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child:Padding(
                                  padding: EdgeInsets.symmetric(horizontal: width*0.03),
                                  child:ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.red[100],
                                    ),
                                    onPressed: (){}, 
                                    child: const Text(
                                      "Delete", 
                                      style:TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Expanded(
                                child:Padding(
                                  padding: EdgeInsets.symmetric(horizontal: width*0.03),
                                  child:ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.white,
                                    ),
                                    onPressed: (){}, 
                                    child: const Text(
                                      "Return",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }, 
              child: const Text('Open it'),
              )
          ],
        ),

      ),

    );
  }
}