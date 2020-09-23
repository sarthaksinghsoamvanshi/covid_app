import 'package:covid_app/clipper.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            // color: Colors.amber,
            child: ClipPath(
              clipper: Roundclipper(
                height: MediaQuery.of(context).size.height * 0.450,
                width: MediaQuery.of(context).size.width,
              ),
              child: Container(
                alignment: Alignment.bottomLeft,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.450,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Colors.blue, Colors.lightBlue],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Symptoms",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Image.asset("images/cough.png"),
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Image.asset("images/fever.png"),
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.white38,
                    child: Image.asset("images/headache.png"),
                    height: 100,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "Prevention",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
        ],
      ),
    );
  }
}
