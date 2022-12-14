import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:prayer_req/Screens/splashscreen.dart';
import 'package:prayer_req/Util/txtfield.dart';

void main() {
  runApp(MaterialApp(home: SplashScreen()));
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController inp1 = TextEditingController();
  TextEditingController inp2 = TextEditingController();
  TextEditingController inp3 = TextEditingController();
  bool btntxt = true;
  var btnlabel = "Submit";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade300,
          title: Center(
              child: Text(
            "Prayer Request",
            style: TextStyle(
                fontSize: 23, letterSpacing: 10, fontWeight: FontWeight.bold),
          )),
        ),
        body: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromRGBO(233, 209, 241, 1),
                Color.fromRGBO(209, 183, 241, 1),
              ]),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Text(
                          "Do Not Fear , For I Am With You Isaiah 41:13",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 12,
                              color: Color.fromARGB(255, 99, 98, 98)))),
                  Padding(
                    padding: EdgeInsets.only(left: 12, right: 12),
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            Color.fromRGBO(233, 209, 241, 1),
                            Color.fromRGBO(209, 183, 241, 1),
                          ]),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(0, 0, 0, 0.2),
                                blurRadius: 20),
                          ]),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Txtfield(co: inp1, label: "For Whom"),
                            Txtfield(co: inp2, label: "Email"),
                            Padding(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: TextField(
                                controller: inp3,
                                maxLines: 3,
                                decoration: InputDecoration(
                                  focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                  color: Colors.purple.shade200)),
                                  label: Text("Type your request"),
                                  border: OutlineInputBorder(
                                  borderRadius:
                                  BorderRadius.circular(10)),
                                ),
                              )
                            )
                          ]
                        ),
                    ),
                  ),
                  Padding(
                     padding: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: 150,
                      height: 50,
                      child: 
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.shade300),
                        onPressed: () {
                        setState(() {
                          inp1.clear();
                          inp2.clear();
                          inp3.clear();
                          btntxt =! btntxt;
                        });
                      },
                      child: btntxt? Text("Submit",  style: TextStyle(fontSize: 18),):Text("Submitted",  style: TextStyle(fontSize: 18),),
                  )
              )
            ),
          ]
        )
      )
    );
  }
}
