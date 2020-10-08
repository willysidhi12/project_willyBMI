// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyProfil extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
          backgroundColor: Colors.blue,
          title: new Center(
            child: new Text("About Me"),
          ),
      ),

      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(100.0),
                child: Image(
                  image:AssetImage('images/bmi.jpg'),
                  width: 150.0,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              Text(
                "Willy Yogantara Sidhi", style: TextStyle(color: Colors.blue, fontSize: 20.0, height: 2.0, fontWeight: FontWeight.bold,),),
              Text(
                "Sistem Informasi",style: TextStyle(color: Colors.blue, fontSize: 15.0, height: 1.0,),),
              Text(
                "yogantaraw@yahoo.com",style: TextStyle(color: Colors.blueGrey, fontSize: 15.0, height: 1.0,),),
              Card(
                margin: EdgeInsets.only(top: 20.0),
                child: Row(
                  children:<Widget> [
                    Expanded(
                      child: Card(
                          color: Colors.greenAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0),
                          child: Column (
                            children: <Widget>[Icon(Icons.my_location, size: 90, color: Colors.red,),
                              Text('Tangerang',style: TextStyle(color: Colors.black87, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    ),

                    Expanded(
                      child: Card(
                          color: Colors.lime,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 10.0,),
                          child: Column (
                            children: <Widget>[Icon(Icons.home, size: 90, color: Colors.brown,),
                              Text('Serdang Asri',style: TextStyle(color: Colors.black, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    )
                  ],
                ),
              ),

              Card(
                margin: EdgeInsets.only(top: 10.0),
                child: Row(
                  children:<Widget> [
                    Expanded(
                      child: Card(
                          color: Colors.grey,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 40.0),
                          child: Column (
                            children: <Widget>[Icon(Icons.music_note, size: 90, color: Colors.pink,),
                              Text('Music',style: TextStyle(color: Colors.black, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          )
                      ),
                    ),

                    Expanded(
                      child: Card(
                          color: Colors.orangeAccent,
                          margin: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 40.0,),
                          child: Column (
                            children: <Widget>[Icon(Icons.business, size: 90, color: Colors.blue,),
                              Text('Undiksha',style: TextStyle(color: Colors.black, fontSize: 17.0, height: 2.0, fontWeight: FontWeight.bold,),)],
                          ),
                      ),
                    ),
                  ],
                ),
              ),

            ]
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,
        child: Container(
          height: 50,
          color: Colors.lightBlue,
          alignment: Alignment.center,
          child: Text(
            'Developed By Willy Sidhi',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

