import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
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
                                  onPressed: null, icon: Icon(Icons.menu,color: Colors.white,))
                            ],
                          )
                        ],
                      )),
                ),
              ),
              // Container(
              //   color: Colors.amber,
              //   margin: EdgeInsets.symmetric(vertical: 20),
              //   padding: EdgeInsets.symmetric(horizontal:10,vertical: 20),
              //   height: MediaQuery.of(context).size.height * 0.35,
              //   width: 200,
              //   child: Image.asset("images/nurse.png"),
              // ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            // padding: EdgeInsets.symmetric(horizontal: 10),
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.location_on),
                      onPressed: null,
                    ),
                    Text(
                      "INDIA",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
                IconButton(
                    icon: Icon(Icons.arrow_drop_down, size: 35),
                    onPressed: null)
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Case Update",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Newest update March 28"),
                    Text(
                      "See Details",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ColumnCases(
                  color: Colors.orange,
                  value: "5439",
                  text: "Infected",
                ),
                ColumnCases(
                  color: Colors.red,
                  value: "204",
                  text: "Deaths",
                ),
                ColumnCases(
                  color: Colors.green,
                  value: "2033",
                  text: "Recovered",
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Spread of Virus",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Text(
                  "See Details",
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            // width: 100,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("images/map11.png"))),
          ),
        ],
      ),
    );
  }
}

class ColumnCases extends StatelessWidget {
  final value;
  final color;
  final text;
  const ColumnCases({this.value, this.color, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 25,
          padding: EdgeInsets.all(6),
          decoration: BoxDecoration(
              shape: BoxShape.circle, color: color.withOpacity(0.26)),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(color: color, width: 2),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: Text(
            value,
            style: TextStyle(color: color, fontSize: 45),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 5),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}

class Roundclipper extends CustomClipper<Path> {
  final height;
  final width;

  Roundclipper({this.height, this.width});
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, height - 80);
    path.quadraticBezierTo(width / 2, height, width, height - 80);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
