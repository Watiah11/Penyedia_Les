import 'package:flutter/material.dart';

class Formulir extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Formulir>{

  List<String> Les=["Piano", "Gitar", "Keyboard", "Vokal"];
  String _Les="Piano";

  String _jk="";

void _pilihJk(value){
  setState(() {
    _jk=value;
  });
}

void pilihLes(value){
  setState(() {
    _Les=value;
  });
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xffADD8E6),
        title: new Text(
          "Formulir", 
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
                  decoration: new InputDecoration(
                    hintText: "Umur",
                    labelText: "Umur",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )

                  ),
                ),

                Padding(padding: new EdgeInsets.only(top: 20.0),),
                new TextField(
                  decoration: new InputDecoration(
                    hintText: "Alamat",
                    labelText: "Alamat",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )

                  ),
                ),

                Padding(padding: new EdgeInsets.only(top: 15.0),),

                new TextField(
                  decoration: new InputDecoration(
                    hintText: "No Hp",
                    labelText: "No Hp",
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)
                    )

                  ),
                ),

                Padding(padding: new EdgeInsets.only(top: 15.0),),

                new RadioListTile(
                  value: "Laki-laki",
                  title: new Text("Laki-laki"), 
                  groupValue: _jk, 
                  onChanged: (value) {
                    _pilihJk(value);
                  },
                  activeColor: Colors.red,
                  subtitle: new Text("Pilih ini jika anda Laki-laki"),
                  ),

                  new RadioListTile(
                  value: "Prempuan",
                  title: new Text("Prempuan"), 
                  groupValue: _jk, 
                  onChanged: (value) {
                    _pilihJk(value);
                  },
                  activeColor: Colors.red,
                  subtitle: new Text("Pilih ini jika anda Prempuan"),
                  ),

                  Padding(padding: new EdgeInsets.only(top: 15.0),),

                  new Row(
                    children: <Widget>[
                      new Text("Pilih Les   ",style: new TextStyle(fontSize: 20.0, color: Colors.teal),),
                      new DropdownButton(
                    onChanged: (value){
                      pilihLes(value);
                    },
                    value: _Les,
                    items: Les.map((value){
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
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Telah selesai di isi"),
                            action: SnackBarAction(label: "OK", onPressed: () {
                              print("Selesai");
                            },),
                            ),
                            );
                      },
                      child: Text(
                        "OK", 
                        selectionColor: Color(0xff2F4F4F),
                        style: TextStyle(
                          fontSize: 15, 
                          color: Colors.black),
                          ),
                      ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}