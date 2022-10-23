import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/welcome.png'), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: [
            Container(),
            Container(
              padding: const EdgeInsets.only(left: 35, top: 110),
              child: const Text(
                'Welcome\nBack',
                style: TextStyle(color: Colors.blueAccent, fontSize: 50),
              ),
            ),
            Container(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.5,
                    right: 35,
                    left: 35),
                child: Column(
                  children: [
                    /*TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.blue.shade200,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),*/
                    const SizedBox(height: 50),
                    /*TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            fillColor: Colors.blue.shade200,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15))),
                      ),*/
                    const SizedBox(height: 100),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Continue',
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontSize: 27,
                              fontWeight: FontWeight.w700),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor:
                              const Color.fromARGB(188, 16, 136, 176),
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                                Navigator.pushNamed(context, 'slotdata');
                              },
                              icon: const Icon(Icons.arrow_forward)),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: const Color.fromARGB(188, 16, 136, 176),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, 'pincode');
                        },
                        icon: const Icon(Icons.arrow_left),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      /*children: [
                          /*TextButton(
                              onPressed: () {Navigator.pushNamed(context, 'register');
                              },
                              child: const Text('Sign Up',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 57, 67, 71),))),
                          
                            TextButton(
                              onPressed: () {Navigator.pushNamed(context, 'forgotp');},
                              child: const Text('Forgot Password',
                                  style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      fontSize: 18,
                                      color: Color.fromARGB(255, 57, 74, 79),))),*/          
                          
                        ],*/
                    )
                  ],
                ))
          ])),
    );
  }
}
