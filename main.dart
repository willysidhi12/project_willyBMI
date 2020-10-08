//import 'dart:html';

import 'package:flutter/material.dart';
import 'bmi_result.dart';
import 'about.dart';

void main(){
  runApp(new MaterialApp(
    home: new Home(),
    routes: <String, WidgetBuilder>{
      '/Halsatu' : (BuildContext context) => new Home(),
      '/Haldua' : (BuildContext context) => new MyProfil(),

    },
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => new _HomeState();
}

class _HomeState extends State<Home> {

  int tinggi = 0;
  int berat = 0;
  int tanggal = 0;
  int bulan = 0;
  int tahun = 0;

  String _jeniskelamin="";

  void _pilihJk(String value){
    setState(() {
      _jeniskelamin = value;
    });
  }

  var _nama = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.view_headline),
        title: new Text('Menghitung BMI'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: (){
              Navigator.pushNamed(context, '/Haldua');
            },
          ),
        ],
      ),

      body: ListView(
        children: <Widget>[
          Container(
            child: Image.asset('images/bmi1.webp',
                fit: BoxFit.fitWidth,
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(20.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: _nama,
                  decoration: new InputDecoration(
                      icon: Icon(Icons.perm_identity),
                      hintText: "Masukkan Nama Lengkap",
                      labelText: "Nama Lengkap",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      )
                  ),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new TextField(
                  onChanged: (txt) {
                    setState(() {
                      tahun = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                      icon: Icon(Icons.calendar_today),
                      hintText: "Masukkan Tahun Lahir",
                      labelText: "Tahun Lahir",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0)
                      ),
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(top: 20.0)),
                new TextField(
                    onChanged: (txt){
                    setState(() {
                    bulan =int.parse(txt);
                    });
                    },
                keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    labelText: "Bulan Lahir",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)
                    ),
                  ),
                ),
                new Padding(padding: new EdgeInsets.only(bottom: 20.0)),
                new TextField(
                  onChanged: (txt){
                    setState(() {
                      tanggal =int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.calendar_today),
                    labelText: "Tanggal Lahir",
                    border: new OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                  ),
                ),
                Text('Pilih Jenis Kelamin Anda'),
                new RadioListTile(
                  value: "Laki-laki",
                  groupValue: _jeniskelamin,
                  title: new Text("Laki-laki"),
                  onChanged: (String value){
                    _pilihJk(value);
                  },
                  subtitle: new Text("Pilih ini jika Anda Laki-laki"),
                ),
                new Padding(padding: new EdgeInsets.only(top: 0.0)),
                new RadioListTile(
                  value: "Perempuan",
                  groupValue: _jeniskelamin,
                  title: new Text("Perempuan"),
                  onChanged: (String value){
                    _pilihJk(value);
                  },
                  subtitle: new Text("Pilih ini jika Anda Perempuan"),
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),

                new Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        onChanged: (txt) {
                          setState(() {
                            tinggi = int.parse(txt);
                          });
                        },

                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Tinggi Badan",
                            suffix: Text('cm'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                            ),
                            //filled: true,
                            hintText: 'Tinggi'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: TextField(

                        onChanged: (txt) {
                          setState(() {
                            berat = int.parse(txt);
                          });
                        },

                        keyboardType: TextInputType.number,
                        maxLength: 3,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        decoration: InputDecoration(
                            labelText: "Berat Badan",
                            suffix: Text('kg'),
                            border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(10.0)
                            ),
                            //filled: true,
                            hintText: 'Berat'),

                      ),
                    ),
                  ],
                ),

                new Padding(padding: new EdgeInsets.only(top: 20.0)),


                Container(
                  //height: double.infinity,
                  margin: EdgeInsets.only(left: 10,right: 10,bottom: 20),
                  child: RaisedButton(
                    onPressed: () {
                      var route = new MaterialPageRoute(
                        builder: (BuildContext) =>
                        new BMIResult(nama_lengkap : _nama.text,tinggi_badan: tinggi, berat_badan: berat, tahun_lahir: tahun, bulan_lahir: bulan, tanggal_lahir: tanggal, jeniskelamin: _jeniskelamin),
                      );
                      Navigator.of(context).push(route);
                      /*
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BMIResult(tinggi_badan: tinggi, berat_badan: berat)),
                      );
                       */
                    },
                    padding: EdgeInsets.only(left: 50, right:50),
                    color: Colors.lightBlue,
                    textColor: Colors.white,
                    child: Text(
                      'Hitung BMI',
                      style:
                      TextStyle(fontSize: 15, fontWeight: FontWeight.bold),

                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
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