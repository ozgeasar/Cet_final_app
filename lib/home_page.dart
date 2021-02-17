import 'package:final_app_cet/login_page.dart';
import 'package:flutter/material.dart';
import 'package:final_app_cet/page_a.dart';
import 'package:final_app_cet/people.dart';

void gotoPagea(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => Pagea()),
  );
}

void gotoLoginPage(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => LoginPage()),
  );
}

void gotoPeople(BuildContext context) {
  Navigator.of(context).push(
    MaterialPageRoute(builder: (context) => People()),
  );
}

class HomePage extends StatefulWidget {
  static String tag = 'home-page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    final lotus = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 70.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/white.png'),
        ),
      ),
    );

    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Lotus Care App',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final explanation = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'for your loved ones',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );



    return Scaffold(


      appBar: AppBar(
        //backgroundColor: Colors.deepPurpleAccent,
        title: Text('Home Page'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.art_track_sharp),
          onPressed: () {
            gotoLoginPage(context);
          },
        ),
        actions:[
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          )
        ],
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
              decoration: BoxDecoration(
                image: DecorationImage(
                  alignment: Alignment.topCenter,
                  image: AssetImage('assets/flww.png'),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(28.0),
              decoration: BoxDecoration(
                gradient:
                LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent] ),
              ),
              child: Column(
                children: [lotus, welcome, explanation],
              ),
            ),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Container(
                      height: 64,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 32,
                            child: Image.asset('assets/flww.png'),
                          ),
                          SizedBox(width: 16,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Lucy Xxxx', style: TextStyle(color: Colors.black, fontSize: 20.0),),
                              Text('ID 76396373849', style: TextStyle(fontSize: 14, color: Colors.black),),
                            ],
                          )
                        ],
                      ),
                    ),

                    Expanded(
                      child: GridView.count(
                        mainAxisSpacing:100,
                        crossAxisSpacing:100,
                        primary:false,
                        crossAxisCount: 2,
                        children: [
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: () {
                              //Navigator.of(context).pushNamed(Pagea.tag);
                              gotoPagea(context);
                            },
                            color: Colors.white,
                           elevation: 9,
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                                Icon(
                                 Icons.ballot_outlined,
                                  size: 60.0,
                                  color: Colors.blueGrey,
                               ),
                               Text('Daily Tasks',
                               style: TextStyle(fontSize: 20),
                               ),
                             ],
                           ),
                          ),

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: () {
                              gotoPeople(context);
                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.auto_awesome,
                                  size: 60.0,
                                  color: Colors.blueGrey,
                                ),
                                Text('Lotus Carers',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.question_answer,
                                  size: 60.0,
                                  color: Colors.blueGrey,
                                ),
                                Text('Chat',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.article_outlined,
                                  size: 60.0,
                                  color: Colors.blueGrey,
                                ),
                                Text('Medicine Infos',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_box_outlined,
                                  size: 60.0,
                                  color: Colors.blueGrey,
                                ),
                                Text('Add new carers',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_location_alt_outlined,
                                  size: 60.0,
                                  color: Colors.blueGrey,
                                ),
                                Text('Tracking',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.accessibility_new_rounded,
                                  size: 60.0,
                                  color: Colors.blueGrey,
                                ),
                                Text('Mood your loved',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.warning_amber_rounded,
                                  size: 60.0,
                                  color: Colors.blueGrey,
                                ),
                                Text('Emergency',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),



                        ],

                      ),
                    ),




                  ],
                ),
              ),
            ),

          ],

      ),

      //decoration: BoxDecoration(
        //gradient:
        //LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent] ),
      //),

     // backgroundColor: Colors.red[100],
    );
  }
}

