import 'package:flutter/material.dart';

class Absen extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Absen>{

  List<String> Absen=["Hadir", "Sakit", "Ijin", "Terlambat", "Tidak Hadir"];
  String _Absen="Hadir";


  TextEditingController controllerNama= new TextEditingController();
  TextEditingController controllerKelas= new TextEditingController();
  TextEditingController controllerKeterangan= new TextEditingController();



void pilihAbsen(value){
  setState(() {
    _Absen=value;
  });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(  
      appBar: new AppBar(
        backgroundColor: Color(0xffADD8E6),
        leading: new Icon(Icons.list),
        title: new Text(
          "Absen", 
          style: TextStyle(fontSize: 20, color: Colors.black),
      ),
      ),
      body: ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: controllerNama,
                  decoration: new InputDecoration(
                    hintText: "Nama Lengkap",
                    labelText: "Nama Lengkap",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )

                  ),
                ),

                Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  controller: controllerKelas,
                  decoration: new InputDecoration(
                    hintText: "kelas Les",
                    labelText: "Kelas Les",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )

                  ),
                ),

                Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  controller: controllerKeterangan,
                  maxLines: 5,
                  decoration: new InputDecoration(
                    hintText: "keterangan",
                    labelText: "Keterangan",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )

                  ),
                ),

                  Padding(padding: new EdgeInsets.only(top: 15.0),),

                  new Row(
                    children: <Widget>[
                      new Text("Absen   ",style: new TextStyle(fontSize: 20.0, color: Colors.teal),),
                      new DropdownButton(
                    onChanged: (value){
                      pilihAbsen(value);
                    },
                    value: _Absen,
                    items: Absen.map((value){
                      return new DropdownMenuItem(
                        value: value,
                        child: new Text(value),
                        );
                    }).toList(), 
                    )
                    ],
                  ),

                  Padding(padding: new EdgeInsets.only(top: 15.0),),

                Center(
                  child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                title: Text("ABSEN"),
                content: new Container(
                  height: 200,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Text("Nama Lengkap : ${controllerNama.text}"),
                      new Text("Kelas Les : ${controllerKelas.text}"),
                      new Text("Keterangan : ${controllerKeterangan.text}"),
                      new Text("Absen : $_Absen"),
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(onPressed: () {}, child: Text("CANCEL")),
                  ElevatedButton(onPressed: () {}, child: Text("OKAY")),
                ],
              ),
            );
          },
          child: Text("OK"),
        ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}