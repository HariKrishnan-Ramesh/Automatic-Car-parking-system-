import 'package:flutter/material.dart';
// import lib.dart;

class MyRegister extends StatefulWidget {
  MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(
        image: AssetImage('assets/addtask2.png'), fit :BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:35,top:110),
              child: Text(
                'Create\nAccount',
                style: TextStyle(color: Color.fromARGB(182, 0, 0, 0), fontSize: 33),
              ),
            ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.28),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:const EdgeInsets.only(left:35,right:35),
                      child: Column(
                        children: [
                          TextField(
                            style:const TextStyle(color: Color.fromARGB(255, 17, 1, 1)),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:const BorderSide(color: Color.fromARGB(255, 61, 40, 40),),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:const BorderSide(
                                  color: Colors.black,
                                ),
                                ),
                                hintText: "Name",
                                hintStyle:const  TextStyle(color:Color.fromARGB(255, 53, 41, 41)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style:const TextStyle(color: Color.fromARGB(255, 56, 33, 33)),
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:const BorderSide(
                                  color: Color.fromARGB(255, 52, 31, 31),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide:const BorderSide(
                                    color: Colors.black,
                                  ),
                                ),
                                hintText: "Email",
                                hintStyle:const TextStyle(color: Color.fromARGB(255, 3, 0, 0)),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                                )),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            style:const TextStyle(color: Color.fromARGB(255, 12, 0, 0)),
                            obscureText: true,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius:BorderRadius.circular(10),
                                borderSide:const BorderSide(
                                  color:Color.fromARGB(255, 19, 4, 4),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:const BorderSide(color: Colors.black,
                                ),
                              ),
                              hintText: "Password",
                              hintStyle:const TextStyle(color: Color.fromARGB(255, 10, 0, 0)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                                )),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontSize: 27,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Color.fromARGB(187, 39, 169, 225),
                                child: IconButton(
                                  color: Color.fromARGB(255, 2, 17, 28),
                                  onPressed: () {},
                                  icon: Icon(Icons.arrow_forward)),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, 'login');
                                },
                                child: const Text(
                                  'Sign In',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    color: Color.fromARGB(179, 11, 103, 161),
                                    fontSize: 20)
                                )
                              )
                            ],
                          )
                        ]
                        ),
                    )
                  ],
                )
              )
            ),
          ]
        ),
      )
    );
  
  }
}