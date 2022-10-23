import 'package:flutter/material.dart';

class MyPass extends StatefulWidget {
  MyPass({Key? key}) : super(key: key);

  @override
  State<MyPass> createState() => _MyPassState();
}

class _MyPassState extends State<MyPass> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/addtask2.png'),fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 35, top: 110),
              child: const Text(
                'Reset\nPassword',
                style:TextStyle(color:Colors.black,
                fontSize: 33
                ),
                ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        style: const TextStyle(color: Color.fromARGB(255, 8, 0, 0)),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:const BorderSide(
                              color: Color.fromARGB(255, 19, 0, 0)
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:const BorderSide(
                              color: Colors.black,
                            ),
                          ),
                          hintText: "Enter mail",
                          hintStyle:const TextStyle(color: Colors.black),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                        )),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      /*TextField(
                        style: TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 13, 3, 3),
                            )
                            )
                        )
                      )*/
                    ],
                  )
              ),
            )
          ],
        )
      ),
    );
  }
}