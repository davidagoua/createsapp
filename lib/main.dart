import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }

}


class _MyHomePageState extends State<MyHomePage>{

  var listView = ListView(
    padding: EdgeInsets.all(10),
    children: <Widget>[
      for (var i = 0; i < 10; i++)
      ListTile(
        leading: CircleAvatar(
          child: Text("BG"),
          backgroundColor: Colors.green,
        ),
        title: Text("Bill Gate", style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text("Excuse-moi je de rebourse la sempro", style: TextStyle(color: Colors.grey)),
      ),

    ],
  );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search, color: Colors.white,),
            ),
            PopupMenuButton(
              itemBuilder: (BuildContext context){
                return [
                  PopupMenuItem(child: Text("Nouveau groupe"),),
                  PopupMenuItem(child: Text("Nouvelle diffusion"),),
                  PopupMenuItem(child: Text("WhatsApp Web"),),
                  PopupMenuItem(child: Text("Messages importants"),),
                  PopupMenuItem(child: Text("Paramètres"),),
                ];
              },
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.photo_camera),),
              Tab(text: 'DISC.',),
              Tab(text: 'STATUT'),
              Tab(text: 'APPELS'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            listView,
            listView,
            listView,
            listView,
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.message),
          backgroundColor: Colors.green,
        ),
      ),
    );
  }

}