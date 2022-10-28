import 'package:flutter/material.dart';

class poi extends StatefulWidget {
  const poi({Key? key}) : super(key: key);

  @override
  State<poi> createState() => _poiState();
}

class _poiState extends State<poi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          children: [
            Text("Online Reportings",style: TextStyle(color:Colors.white ),)

          ],
        ),
        backgroundColor:Colors.black,elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            Row(
              children: [
                SizedBox(width: 10,),
                Text("Select a crime type",style: TextStyle(color: Colors.white,fontSize: 35),),
              ],
            ),
            SizedBox(height: 20,),
            new GridView.builder
              (
              shrinkWrap: true,
              gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2 ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return new Card(
                  color: Colors.black,
                  child: new GridTile(
                      footer: new Text("poaching",style: TextStyle(color: Colors.yellow),),
                      child: new Image.asset('assets/iconn.jpeg'),
                    //just for testing, will fill with image later
                  ),
                );
              },
            )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),

            label: '',
            backgroundColor: Colors.lightBlueAccent,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: '',
            backgroundColor: Colors.white,
          ),


        ],
        selectedLabelStyle: TextStyle(fontSize: 0),
        selectedItemColor: Colors.white,
      ),
    );
  }
}
