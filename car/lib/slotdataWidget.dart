import 'package:flutter/material.dart';
import 'package:mycar_app/login.dart';
import 'slotdata.dart';
import 'login.dart';
class SlotdataWidget extends StatefulWidget {
  const SlotdataWidget({Key? key}) : super(key: key);

  @override
  State<SlotdataWidget> createState() => _SlotdataWidgetState();
}

class _SlotdataWidgetState extends State<SlotdataWidget> {
  SlotDef slotdata = SlotDef();
  late int? color;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 10, 10, 56),
      appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pushNamed(context, 'login');
        },
    )
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "slot no",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline),
              ),
              Text(
                "event time",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline),
              ),
              Text(
                "status",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    decoration: TextDecoration.underline),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          SingleChildScrollView(
            child: FutureBuilder<List>(
                future: slotdata.getAllSlot(),
                builder: (context, snapshot) {
                  // print(snapshot.data);
                  if (snapshot.hasData) {
                    return ListView.builder(
                        // scrollDirection: Axis.vertical,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: snapshot.data?.length,
                        itemBuilder: (context, i) {
                          color = snapshot.data![i]["status"];
                          return Container(
                            margin: EdgeInsets.all(10),
                            // height: MediaQuery.of(context).size.height*.1,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // color: Colors.green,
                                SizedBox(
                                  height: 55,
                                  child: ListTile(
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius: BorderRadius.circular(30)),
                                    shape: RoundedRectangleBorder(
                                    
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    tileColor:
                                        color == 1 ? Colors.red : Colors.green,
                                    textColor: Colors.white,
                                    iconColor: Colors.white,
                                    leading: CircleAvatar(
                                      backgroundColor:Colors.black,
                                      child: Text(
                                        snapshot.data![i]["slot_no"].toString(),
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    title: Text(
                                        snapshot.data![i]["event_time"]
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)),
                                    trailing: Text(
                                      color == 1 ?"occupied":"available",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        });
                  } else {
                    return const Center(
                      child: Text("No data available",
                          style: TextStyle(
                              color: Colors.blueGrey,
                              fontFamily: "poppins",
                              fontSize: 15)),
                    );
                  }
                }),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: FloatingActionButton(
          child: Icon(Icons.refresh),
          backgroundColor: Colors.green,
          onPressed: () {
            setState(() {});
          },
        ),
      ),
    );
  }
}

    //  Text(snapshot.data![i]["slot_no"].toString()),
    //                             Text(snapshot.data![i]["event_time"]),
    //                               Text(snapshot.data![i]["status"].toString()),