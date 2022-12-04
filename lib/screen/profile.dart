import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:truetask_app/main.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    TextEditingController name = TextEditingController();
    TextEditingController username = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Stack(children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 80.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  )),
              child: Column(
                children: <Widget>[
                  Container(
                    padding:
                        EdgeInsets.only(top: 80.0, left: 20.0, right: 20.0),
                    child: Column(
                      children: <Widget>[
                        TextField(
                          controller: name,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            prefixIcon: Icon(Icons.person),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: username,
                          decoration: InputDecoration(
                            labelText: 'Username',
                            prefixIcon: Icon(Icons.people),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: email,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            prefixIcon: Icon(Icons.email),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        TextField(
                          controller: password,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.password),
                            border: myInputBorder(),
                            enabledBorder: myInputBorder(),
                            focusedBorder: myFocusBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Update'),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.indigo,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 25.0, vertical: 20.0),
                              textStyle: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'assets/image/Avatar2.png',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    right: 15.5,
                    child: Container(
                        padding: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                            color: Colors.blue, shape: BoxShape.circle),
                        child: Icon(
                          Icons.edit,
                          size: 30.0,
                        )),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  OutlineInputBorder myInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.red,
          width: 3,
        ));
  }

  OutlineInputBorder myFocusBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        borderSide: BorderSide(
          color: Colors.grey,
          width: 3,
        ));
  }
}
