import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Pincode extends StatefulWidget {
  const Pincode({Key? key}) : super(key: key);

  @override
  _PincodeState createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  String password = "123456";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 10, 56),
      appBar: AppBar(
        title: const Text('Parking App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Enter the 6 digit PIN",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Center(
              child: PinCodeTextField(
                length: 6,
                obscureText: false,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                ),
                animationDuration: const Duration(milliseconds: 300),
                backgroundColor: Color.fromARGB(255, 10, 10, 56),
                enableActiveFill: true,
                controller: textEditingController,
                onCompleted: (v) {
                  if (password == v) {
                    Navigator.pushNamed(context, 'login');
                  } else {
                    
                    print("failed");
                    showDialog(
                        context: context,
                        builder: (ctx) => AlertDialog(
                              title:
                                  Text("login failed enter the pin correctly"),
                              actions: <Widget>[
                                FlatButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(17.0),
                                  ),
                                  height: 30,
                                  minWidth: 60,
                                  onPressed: () {
                                    Navigator.of(ctx).pop();
                                  },
                                  color: Colors.green,
                                  splashColor: Colors.white12,
                                  child: Text(
                                    "ok",
                                    style: TextStyle(
                                      fontFamily: "poppins",
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromARGB(255, 235, 237, 237),
                                    ),
                                  ),
                                ),
                              ],
                            ));
                  }
                  print(v);
                  // setState(() {});
                  debugPrint("Completed");
                },
                onChanged: (value) {
                  debugPrint(value);
                  setState(() {
                    currentText = value;
                  });
                },
                beforeTextPaste: (text) {
                  return true;
                },
                appContext: context,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
