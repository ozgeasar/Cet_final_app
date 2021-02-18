import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MedInfo extends StatefulWidget {
  @override
  _MedInfoState createState() => _MedInfoState();
}

class _MedInfoState extends State<MedInfo> {
  @override

  Widget build(BuildContext context) {
    final screenHeight =MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        elevation: 11,
        title: Text(
          'Med Info',

        ),

        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white30, Colors.purpleAccent],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft,
            ),
          ),
        ),
      ),

      body: Stack(
        children: [
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.transparent,
          ),
          Positioned(
            left: 25.0,
            top: 75.0,

            child: Container(
              height: 800.0,
              width: 425.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(15.0)
                ),
              ),
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15.0, bottom: 10.0),
                    child: Text(
                      'Medicine Information and Usage',
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 15.0, bottom: 20.0, right: 25.0
                    ),
                    child: Text(
                      'Learn everything with one click',
                      style: TextStyle(
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 25.0, bottom: 10.0),
                  child: Container(
                    height: 275.0,
                    width: 310.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        _buildMedCard('Pain KillerX', '15 gram', 'assets/flww.png'),



                      ],
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),


        ],

      ),
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),),


    );
  }

  Widget _buildMedCard(String title, String calCount, String imgPath) {
    return InkWell(
      onTap: () {



      },
      child: Padding(
        padding: EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
        child: Stack(
          children: [
            Container(
              height: 275.0,
              width: 200.0,
            ),
            Positioned(
              top: 7.0,
              child: Container(
                height: 250.0,
                width: 175.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.pink[300],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    SizedBox(height: 7.0),
                    Padding(padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      'for back pain',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                      ),
                    ),
                    ),
                    SizedBox(height: 25.0),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 90.0,
              child: Hero(
                tag: imgPath,
                child: Container(
                  height: 110.0,
                  width: 110.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover

                    )
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

}
