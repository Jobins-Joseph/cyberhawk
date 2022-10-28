import 'package:flutter/material.dart';

class fif extends StatefulWidget {
  const fif({Key? key}) : super(key: key);

  @override
  State<fif> createState() => _fifState();
}

class _fifState extends State<fif> {
  bool isSwitched = false;
  bool is_Switched = false;
  bool is__Switched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text("Online reportings",style: TextStyle(color: Colors.white,fontSize: 20),)
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Add crime details",style: TextStyle(color: Colors.white,fontSize: 30),),
              ],
            ),
            SizedBox(height: 30,),
            Container(child:
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("sources",style: TextStyle(color: Colors.white30,fontSize: 15),),
                  ],
                ),
                SizedBox(height: 05,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("instagram",style: TextStyle(color: Colors.white,fontSize: 15),),
                  ],
                )
              ],
            )),
              SizedBox(height: 15,),
            Container(child: 
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("link",style: TextStyle(color: Colors.white30,fontSize: 15),),
                  ],
                ),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("https://xd.adobe.com/view"),
                  ],
                )
              ],
            )),
            SizedBox(height: 50,),
            Container(child:
            Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Aware of species",style: TextStyle(color: Colors.white,fontSize: 17),),
              SizedBox(width:150),
              Switch(
                value: is_Switched,
                onChanged: (value) {
                  setState(() {
                    is_Switched = value;
                    print(is_Switched);
                  });
                },
                activeTrackColor: Colors.lightGreenAccent,
                activeColor: Colors.green,
              ),
              ]
            ),


                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Is there any suspect",style: TextStyle(color: Colors.white,fontSize: 17),),
        SizedBox(width: 130,),
        Switch(
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
              print(isSwitched);
            });
          },
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.green,
        ),]
      ),

                  ],
                ),
            ),
            
            SizedBox(height: 30,),
            Container(
                child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 18,),
                    Text("comments",style: TextStyle(color: Colors.white30,fontSize: 15),),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s,",style: TextStyle(color: Colors.white,fontSize: 15.5),),
                )
              ],
            )),
SizedBox(height: 30,),
            Container(
                child: Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Send Anonymously",style: TextStyle(color: Colors.white,fontSize: 17),),
                    SizedBox(width: 135,),
                    Switch(
                      value: is__Switched,
                      onChanged: (value) {
                        setState(() {
                          is__Switched = value;
                          print(is__Switched);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.green,
                    ),

                  ],
                )),
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: MaterialButton(onPressed: (){},
                  color: Colors.amber,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        SizedBox(width: 140,),
                        Text("Report",style: TextStyle(color: Colors.black),),

                      ],
                    ),
                  ),
                ),

              ),
            )

          ],
        ),
      ),
      backgroundColor: Colors.black,
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
