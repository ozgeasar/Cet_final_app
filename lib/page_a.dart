import 'package:final_app_cet/task.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'task.dart';
import 'dart:convert';


class Pagea extends StatefulWidget {
  static String tag = 'page-a';
  //static const routeName = '/page-a';
  @override
  _PageaState createState() => _PageaState();
}

class _PageaState extends State<Pagea> {
  var _taskController;
  List<Task> _tasks;
  List<bool> _tasksDone;

  void saveData() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    Task t = Task.fromString(_taskController.text);
    //prefs.setString('task', json.encode(t.getMap()));
    //_taskController.text = '';

    String tasks = prefs.getString('task');
    List list = (tasks == null) ? [] : json.decode(tasks);
    print(list);
    list.add(json.encode(t.getMap()));
    print(list);
    prefs.setString('task', json.encode(list));
    _taskController.text = '';
    Navigator.of(context).pop();

    _getTasks();
  }

  void _getTasks() async{
    _tasks = [];
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String tasks = prefs.getString('task');
    List list = (tasks == null) ? [] : json.decode(tasks);
    for(dynamic d in list){
      _tasks.add(Task.fromMap(json.decode(d)));
    }

    print(_tasks);

    _tasksDone = List.generate(_tasks.length, (index) => false);
    setState(() {});
  }

  void updatePendingTasksList() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Task> pendingList = [];
    for (var i=0; i<_tasks.length; i++)
      if(!_tasksDone[i]) pendingList.add(_tasks[i]);
      var pendingListEncoded = List.generate(
        pendingList.length, (i) => json.encode(pendingList[i].getMap()),
      );
      prefs.setString('task', json.encode(pendingListEncoded));
      _getTasks();
  }

  @override
  void initState() {
    super.initState();
    _taskController= TextEditingController();

    _getTasks();
  }

  @override
  void dispose() {
    _taskController.dispoes();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],

           appBar: AppBar(
        title: Text('Daily Tasks'),
        actions: [
          IconButton(
              icon: Icon(Icons.save),
              onPressed: () => updatePendingTasksList(),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline),
            onPressed: () => updatePendingTasksList(),
          ),

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
      body: (_tasks == null)
          ? Center(
        child: Text('No Tasks added yet!'),
      )
          : Column(
          children: _tasks.map((e) => Container(
            height: 70.0,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(
            horizontal: 10.0,
            vertical: 5.0,
          ),
            padding: const EdgeInsets.only(
              left: 10.0,
            ),
          alignment: Alignment.centerLeft,

          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: Colors.black,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(e.task
              ),
              Checkbox(
                value: _tasksDone[_tasks.indexOf(e)],
                key: GlobalKey(), onChanged: (val) {
                  setState(() {
                    _tasksDone[_tasks.indexOf(e)] = val;
                  });

              },
              ),
            ],
          ),
        ))
        .toList(),
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
        elevation: 10,


        onPressed: () => showModalBottomSheet(
          context: context,
          builder: (BuildContext context) => Container(
            padding: const EdgeInsets.all(10.0),
            height: 350,
            decoration: BoxDecoration(
              gradient:
              LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent] ),
            ),
            //color: Colors.lightBlueAccent[200],
            child: Column(

              children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add task',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(Icons.close),),
                ],
              ),
                Divider(thickness: 1.2),
                SizedBox(height: 20.0),
                TextField(
                  controller: _taskController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Enter task',
                  ),
                ),
                SizedBox(height: 20.0),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  width: MediaQuery.of(context).size.width,

                  child: Row(
                    children: [



                      Container(
                        width: (MediaQuery.of(context).size.width/2) - 25,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Text(
                            'ADD',
                          ),
                          onPressed: () => saveData(),
                        ),
                      ),

                      SizedBox(
                        width:10.0,
                      ),

                      Container(
                        width: (MediaQuery.of(context).size.width/2) - 25,
                        child: RaisedButton(
                          color: Colors.white,
                          child: Text(
                            'RESET',
                          ),
                          onPressed: () => _taskController.text = '',
                        ),
                      ),



                    ],
                  ),
                ),
            ]),
          ),
        ),
      ),
    );
  }
}


