import 'package:first_project/UI/3rdpage.dart';
import 'package:flutter/material.dart';

import '15th page.dart';
import '3rdpage.dart';
import '2nd page.dart';


class ooi extends StatefulWidget {
  const ooi({Key? key}) : super(key: key);

  @override
  State<ooi> createState() => _ooiState();
}

class _ooiState extends State<ooi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer:Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(

        title: Row(

          children: [

            Text("CYBER  HAWK"),
            SizedBox(width: 20,),
            SizedBox(width: 30,),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                height: 50,
                decoration: BoxDecoration(

                  gradient: LinearGradient(
                    colors: <Color>[Colors.black45,Colors.transparent]
                  )
                ),
                child: TextButton(onPressed: (){},

                  child: Row(
                    children: [
                      InkWell(child: Icon(Icons.sync,color: Colors.amber,),),
                      SizedBox(width: 2,),
                      Text("offline sync",style: TextStyle(fontSize: 15,color: Colors.amber),),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        backgroundColor:Colors.transparent,elevation: 0,

      ),
      body: SingleChildScrollView(
        child: (
            Column(
              children: [
                SizedBox(height: 50,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("We handle your \n Reportings.",style: TextStyle(color: Colors.white,fontSize: 30),),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  child: MaterialButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>poi()));
                    },color: Colors.amber,splashColor: Colors.blueGrey,
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ SizedBox(),
                        Text("REPORT CRIME",style: TextStyle(color: Colors.black87,fontSize: 20),),

                        Icon(Icons.arrow_forward_ios,color: Colors.black87,)
                      ],
                    ),

                  ),
                ),SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 20,),
                    Text("Recommended",style: TextStyle(fontSize: 25),),
                  ],
                ),
                SizedBox(height: 10,),
               Padding(
                 padding: const EdgeInsets.all(15.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Container(
                        width : 100,
                       height: 100,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: <Color>[Colors.blueGrey,Colors.transparent]
                            )
                          ),
                          child: MaterialButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>third()));
                          },

                            child: Column(
                              children: [
                                SizedBox(height: 25,),
                                Image.asset('assets/item3.png'),
                                Text("Reports")
                              ],
                            ),
                            splashColor: Colors.red,
                          ),
                        ),

                       color: Colors.transparent,
                     ),


                  Container(
                    width: 100,
                    height: 100,
                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[Colors.blueGrey,Colors.transparent]
                          )
                      ),
                      child: MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>fif()));
                      },
                        child: Column(
                          children: [
                            SizedBox(height: 25,),
                            Image.asset('assets/item2.png'),
                            Text("digital Guide")
                          ],
                        ),
                        splashColor: Colors.red,
                      ),
                    ),


                    color: Colors.transparent,

                  ),
                  Container(
                    width: 100,
                    height: 100,

                    child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: <Color>[Colors.blueGrey,Colors.transparent]
                          )
                      ),
                      child: MaterialButton(onPressed: (){},
                        child: Column(
                          children: [

                            SizedBox(height: 25,),
                            Image.asset('assets/item1.png'),
                            Text("My Analytics")
                          ],
                        ),
                        splashColor: Colors.red,
                      ),
                    ),

                    color: Colors.transparent,
                  ),
                   ],
                 ),
               ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 25,),
                    Text("Recent Reports",style: TextStyle(fontSize: 23),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 18,
                        width: 100,
                        color: Color(0xff4F6942),
                        child: Row(
                          children: [
                            SizedBox(width: 5,),
                            Text("Online Reporting",style: TextStyle(fontSize: 12,color: Colors.green),),
                          ],
                        )),
                    Container(

                        child: Text("instagram",style: TextStyle(fontSize: 12,),)),
                    Container(child: Text("Suspect")),
                  ],
                ),
                SizedBox(height: 7,),

                Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("assets/cylogo.png"),
                    SizedBox(width: 1,),
                    Column(
                      children: [
                        Text("Lorem Ipsum is simply dummy text of the prin…"),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 5,),
                            Text("https://in.images.search.yahoo.com/yhs/search;_E",style: TextStyle(color: Colors.lightBlueAccent),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(

                  children: [

                    Row(
                      children: [
                        SizedBox(width: 50,),
                        Container(
                            height: 18,
                            width: 100,
                            color: Color(0xff4F6942),
                            child: Row(
                              children: [
                                SizedBox(width: 5,),
                                Text("Online Reporting",style: TextStyle(fontSize: 12,color: Colors.green),),
                              ],
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Container(


                            child: Text("facebook",style: TextStyle(fontSize: 12,),)),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 7,),

                Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("assets/cylogo.png"),
                    SizedBox(width: 1,),
                    Column(
                      children: [
                        Text("Lorem Ipsum is simply dummy text of the prin…"),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 5,),
                            Text("https://in.images.search.yahoo.com/yhs/search;_E",style: TextStyle(color: Colors.lightBlueAccent),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                Row(

                  children: [

                    Row(
                      children: [
                        SizedBox(width: 50,),
                        Container(
                            height: 18,
                            width: 100,
                            color: Color(0xff4F6942),
                            child: Row(
                              children: [
                                SizedBox(width: 5,),
                                Text("Online Reporting",style: TextStyle(fontSize: 12,color: Colors.green),),
                              ],
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Container(


                            child: Text("facebook",style: TextStyle(fontSize: 12,),)),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 7,),

                Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("assets/cylogo.png"),
                    SizedBox(width: 1,),
                    Column(
                      children: [
                        Text("Lorem Ipsum is simply dummy text of the prin…"),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 5,),
                            Text("https://in.images.search.yahoo.com/yhs/search;_E",style: TextStyle(color: Colors.lightBlueAccent),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10,),
                Row(

                  children: [

                    Row(
                      children: [
                        SizedBox(width: 50,),
                        Container(
                            height: 18,
                            width: 100,
                            color: Color(0xff4F6942),
                            child: Row(
                              children: [
                                SizedBox(width: 5,),
                                Text("Online Reporting",style: TextStyle(fontSize: 12,color: Colors.green),),
                              ],
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 40,),
                        Container(


                            child: Text("facebook",style: TextStyle(fontSize: 12,),)),
                      ],
                    ),

                  ],
                ),
                SizedBox(height: 7,),

                Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("assets/cylogo.png"),
                    SizedBox(width: 1,),
                    Column(
                      children: [
                        Text("Lorem Ipsum is simply dummy text of the prin…"),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            SizedBox(width: 5,),
                            Text("https://in.images.search.yahoo.com/yhs/search;_E",style: TextStyle(color: Colors.lightBlueAccent),),
                          ],
                        ),
                      ],
                    )
                  ],
                ),

              ],
            )
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
