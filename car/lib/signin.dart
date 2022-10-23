import 'package:flutter/material.dart';
import 'package:mycar_app/slotdata.dart';

class MySignin extends StatefulWidget {
  MySignin({Key? key}) : super(key: key);

  @override
  State<MySignin> createState() => _MySigninState();
}

class _MySigninState extends State<MySignin> {
  SlotDef slot = SlotDef();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(92, 19, 45, 44),
        elevation: 0,
        title:const Text('A U T O P A R K'),
        leading: IconButton(onPressed: () {
        
        },
        icon:const Icon(Icons.menu)
        ),
      ),
      body:ListView(
        scrollDirection: Axis.vertical,
        reverse:false,
        children:[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:Container(
              height:150,
              child:Center(child:Text(
                "Slot 1",style:TextStyle(fontSize: 40,color: Colors.black,)
              ),),
              
              decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(30)),
                color:const Color.fromARGB(255, 50, 164, 225),
              ),
            )
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:Container(
              height: 150,
              child:Center(child:Text(
                "Slot 2",style:TextStyle(fontSize: 40,color:Colors.black)
              ),),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(30)),
                color:const Color.fromARGB(255, 50, 164, 225),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:Container(
              height: 150,
              child:Center(child:Text(
                "Slot 3",style:TextStyle(fontSize: 40,color:Colors.black)
              ),),
              decoration: BoxDecoration(
                borderRadius:BorderRadius.all(Radius.circular(30)),
                color:const Color.fromARGB(255, 50, 164, 225),
              ),
            ),
          ),
          CircleAvatar(
                      radius: 35,
                      backgroundColor:const
                      Color.fromARGB(188, 16, 136, 176),
                      child: IconButton(
                      color: Colors.white,
                      onPressed: () {Navigator.pushNamed(context,'signin');},
                      icon:const Icon(Icons.update)),)
        ],
      ),
    );
  }
}

