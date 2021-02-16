import 'package:final_app_cet/login_page.dart';
import 'package:flutter/material.dart';
import 'package:final_app_cet/page_a.dart';

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
                          ),
                          SizedBox(width: 16,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Ferrany Lushn', style: TextStyle(color: Colors.black, fontSize: 20.0),),
                              Text('76396373849', style: TextStyle(fontSize: 14, color: Colors.black),),
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
                              borderRadius: BorderRadius.circular(15)
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
                               ),
                               Text('Daily Tasks')
                             ],
                           ),
                          ),

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.ballot_outlined,
                                ),
                                Text('Daily Tasks')
                              ],
                            ),
                          ),

                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.ballot_outlined,
                                ),
                                Text('Daily Tasks')
                              ],
                            ),
                          ),
                          RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            onPressed: () {

                            },
                            color: Colors.white,
                            elevation: 9,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.ballot_outlined,
                                ),
                                Text('Daily Tasks')
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


    );
  }
}

