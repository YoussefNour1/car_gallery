import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade400,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Gallery"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildContainer("images/car8.jpg"),
              buildContainer("images/car9.jpg"),
              buildContainer("images/car5.jpg"),
              buildContainer("images/car3.jpg"),
              buildContainer("images/car6.jpg"),
              buildContainer("images/car4.jpg"),
              buildContainer("images/car1.jpg"),
              buildContainer("images/car2.jpg"),
              buildContainer("images/car10.jpg"),
              buildContainer("images/car7.jpg"),
            ],
          ),
        ));
  }

  Container buildContainer(String img) {
    return Container(
              width: 400,
              height: 350,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(img),),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Colors.grey.shade400,
              ),
            );
  }
}
