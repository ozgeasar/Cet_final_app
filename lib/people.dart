import 'package:flutter/material.dart';
import 'package:final_app_cet/chat_model.dart';


class People extends StatefulWidget {
  @override
  _PeopleState createState() => _PeopleState();
}

class _PeopleState extends State<People> {
  List<ChatModel> list = ChatModel.list;
  @override
    Widget build(BuildContext context) {
      return Scaffold(

            backgroundColor: Colors.pink[50],

        appBar: AppBar(
          elevation: 11,
          title: Text(
            'Carers',

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

        body: Column(
          children: [

         /* Container(

        decoration: BoxDecoration(
          gradient:
          LinearGradient(colors: [Colors.black54, Colors.black12] ),
        ),
      ),*/
            SizedBox(
          height: 28,
        ),
            Container(
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: Colors.pink[300],
                borderRadius: BorderRadius.all(Radius.circular(10),)
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: IconButton(
                    icon: Icon(Icons.search, color: Colors.black,),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
            Expanded(child: ListView.builder(
            itemCount: list.length,
              itemBuilder: (context, index)
            {
              return ListTile(
                title: Text(list[index].contact.name,

                ),

                leading: Container(
                  width: 50,
                  height: 50,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100),),
                    image: DecorationImage(
                      image: ExactAssetImage("assets/flww.png"),
                    ),

                  ),
                ),

                subtitle: Row(
                  children: [
                    Text(
                      list[index].lastMessage,
                      //style: TextStyle(
                       // color:Colors.white54,
                    //),
                    ),
                    SizedBox(width: 25,),
                    Text(
                      list[index].lastMessageTime + " days ago",
                     // style: TextStyle(
                      //  color:Colors.white54,
                     // ),
                    ),

                  ],
                ),
              );
            },),),

      ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.add),),
      );
    }
}
