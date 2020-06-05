import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HabitTracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _value2 = false;
  bool _value3 = false;
  bool _value4 =false;

  void _value2Changed(bool value) => setState(() => _value2 = value);
  void _value3Changed(bool value) => setState(() => _value3 = value);
  void _value4Changed(bool value) => setState(() => _value4 = value);



  @override
  Widget build(BuildContext context) {
   /* var _textField = TextField();*/
    //todo textfield to each new task
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(color: Colors.black12,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Day',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                          ))),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Container(color: Colors.black12,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Week',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                          ))),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                      child: Container(color: Colors.black12,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Month',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w400),
                            ),
                          ))),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: ListView(//todo add data day/month
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, top: 20),
                      child: Row(
                        children: <Widget>[IconButton(icon: Icon(Icons.chevron_left),),
                          Card(
                            child: Text(('7 Feb'),style: TextStyle(fontSize: 25.2),),
                          ),
                          IconButton(icon: Icon(Icons.chevron_right),)
                        ],
                      ),
                    )

                    //todo search how to make swipe right and left using date as well
                  ],
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          color: Colors.purple.shade50,
                          child: CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            value: _value2,
                            onChanged: _value2Changed,
                            title: Text(
                              'Meditation',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300,color: Colors.purple),
                            ),
                            activeColor: Colors.purple,
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 80,
                          color: Colors.green.shade50,
                          child: CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            value: _value3,
                            onChanged: _value3Changed,
                            title: Text(
                              'Workout',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300,color: Colors.green),
                            ),
                            activeColor: Colors.green,
                          ),
                        ),
                        SizedBox(height: 15,),
                        Container(
                          height: 80,
                          color: Colors.yellow.shade50,
                          child: CheckboxListTile(
                            controlAffinity: ListTileControlAffinity.leading,
                            value: _value4,
                            onChanged: _value4Changed,
                            title: Text(
                              'Reading',
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w300,color: Colors.yellow.shade700),
                            ),
                            activeColor: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),

        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //todo make it look better
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              //todo create sharing path to an existing fb profile
              //todo link it to fb
              IconButton(icon: Icon(Icons.share),onPressed: (){},),
              IconButton(icon: Icon(Icons.person),onPressed: (){},),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.white,
        onPressed: (){},
           child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }
}
