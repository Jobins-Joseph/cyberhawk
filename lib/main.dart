import 'package:first_project/UI/signup.dart';
import 'package:first_project/bloc/Loginbloc.dart';
import 'package:first_project/bloc/signupbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'UI/3rdpage.dart';
import 'UI/9thpage.dart';
import 'UI/2nd page.dart';
import 'UI/15th page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider<LoginBloc>(create: (context)=>LoginBloc()),
        BlocProvider<SignupBloc>(create: (context)=>SignupBloc())




      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
         brightness: Brightness.dark,

        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  var password=TextEditingController();
  var username=TextEditingController();
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(

      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
                height: MediaQuery.of(context).size.height,
                child: Image.asset('assets/back.jpg',fit:BoxFit.fitHeight,)),
          Column(
            children: [
              SizedBox(height: 60,),

              Row(
    children: [

                 SizedBox(width: 20,),

              Image.asset('assets/cylogo.png'),
SizedBox(width: 25,),
                 Text("CYBERHAWK",
                  style: TextStyle(fontSize: 35),),



    ],

    //     SizedBox(height: 40,),
    //     Text("Login",style: TextStyle(fontSize: 38),),
                // Center is a layout widget. It takes a single child and positions it
                // in the middle of the parent.

                  // Column is also a layout widget. It takes a list of children and
                  // arranges them vertically. By default, it sizes itself to fit its
                  // children horizontally, and tries to be as tall as its parent.
                  //
                  // Invoke "debug painting" (press "p" in the console, choose the
                  // "Toggle Debug Paint" action from the Flutter Inspector in Android
                  // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
                  // to see the wireframe for each widget.
                  //
                  // Column has various properties to control how it sizes itself and
                  // how it positions its children. Here we use mainAxisAlignment to
                  // center the children vertically; the main axis here is the vertical
                  // axis because Columns are vertical (the cross axis would be
                  // horizontal).

                ),
              SizedBox(height: 200,),
              Row(
                children: [
                  SizedBox(width: 50,),

                  Text("Login",style: TextStyle(fontSize: 40),),
                ],
              ),
SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
controller: username,
                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.account_circle_outlined) ,
                    border: OutlineInputBorder(),

                    label: Text('username'),

                  ),



                ),



              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextField(
    controller: password,

                  decoration: InputDecoration(
                    prefixIcon:Icon(Icons.lock) ,
                    border: OutlineInputBorder(),

                    label: Text('password'),

                  ),



                ),
              ),
              Row(

                children: [
                  SizedBox(width: 25,),
                  Container(
                    child: MaterialButton(onPressed: (){

    BlocProvider.of<LoginBloc>(context).add(
    VerifyPassword(
    username: username.text,
    password: password.text));
    },
    minWidth: 345,
    color: Colors.amber,
    child: BlocConsumer<LoginBloc, LoginStates>(
    listener: (context, state) {
    if (state is LoginError) {
    Fluttertoast.showToast(
    msg: state.error.toString());
    }
    if (state is LoginSuccess) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ooi()));
    }
    },
    builder: (context, state) {
    if (state is Loader) {
    return CircularProgressIndicator();
    } else {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(width: 100,),
          Text(
      'LOGIN',
      style: TextStyle(
          fontFamily: 'kumbhh',
          color: Colors.black),
          ),
          SizedBox(width: 100,),
          Icon(Icons.arrow_forward_ios,color: Colors.black),
        ]
        );
    }
    },
    ),
    ),

                  ),


                  ]

              ),




              MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>sig()));
              },

               child: Text("Don't have an account? Create Account",style: TextStyle(color: Colors.grey),),)

],
          ),
            ],

          ),

        ),

     );

     // This trailing comma makes auto-formatting nicer for build methods.
  }
}
