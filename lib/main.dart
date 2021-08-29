import 'package:flutter/material.dart';
import 'file:///F:/AndroidProjects/car_gallery/lib/galleryScreen.dart';

main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  final String imgURL = "https://i.pinimg.com/564x/f9/32/28/f93228dff3dc11d44be6ce31d9515365.jpg";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Cars Gallery",
      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(imgURL), fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 100)),
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text(
                  "To The Biggest Car Gallery in The World",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 500,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Material(
                      elevation: 10,
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade900,
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        onPressed: () {
                          showAlertDialog(context);
                        },
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(15),
                      elevation: 10,
                      color: Colors.red.shade600,
                      child: FlatButton(
                        padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                        onPressed: () {
                          showAlertDialog2(context);
                        },
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Material(
                  elevation: 10,
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Continue with Google",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Log in"),
    titleTextStyle: TextStyle(
        fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
    scrollable: true,
    content: Container(
      width: 350,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          TextField(
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(fontSize: 22),
              helperText: "user@domain.com",
              helperStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(fontSize: 22),
              helperText: "We will never share your password",
              helperStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            onPressed: () {
              Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>Gallery()));
            },
            color: Colors.blue.shade900,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Sign in",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    ),
  );

  // show the dialog
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertDialog2(BuildContext context) {
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Create New Account"),
    backgroundColor: Colors.grey.shade300,
    titleTextStyle: TextStyle(
        fontSize: 30, color: Colors.black, fontWeight: FontWeight.bold),
    scrollable: true,
    content: Container(
      width: 350,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 10)),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "User Name",
              labelStyle: TextStyle(fontSize: 22),
              helperText: "Enter a username without spaces",
              helperStyle: TextStyle(fontSize: 12),
              prefixIcon: Icon(Icons.account_circle),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          TextField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(fontSize: 22),
              helperText: "user@domain.com",
              helperStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          TextField(
            obscureText: true,
            keyboardType: TextInputType.visiblePassword,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(fontSize: 22),
              helperText: "Chose a strong password",
              helperStyle: TextStyle(fontSize: 15),
              prefixIcon: Icon(Icons.visibility),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          RaisedButton(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Gallery()),
              );
            },
            color: Colors.blue.shade900,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "Sign in",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ],
      ),
    ),
  );

  // show the dialog
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
