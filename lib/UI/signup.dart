import 'package:first_project/bloc/signupbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class sig extends StatefulWidget {
  const sig({Key? key}) : super(key: key);

  @override
  State<sig> createState() => _sigState();
}

class _sigState extends State<sig> {
  @override

  var phoneno=TextEditingController();
  var Password=TextEditingController();
  var role=TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                  child: Text("Create account",style: TextStyle(fontSize: 25),)),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: phoneno,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("phone no")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: Password,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: role,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Role")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: MaterialButton(onPressed: (){
    BlocProvider.of<SignupBloc>(context).add(
    GetSignupevent(
    username: phoneno.text,
    password: Password.text,
    role:role.text
    
    ));
    },
                
                  color: Colors.amber,
                  child: Row(
                    children: [
                      SizedBox(width: 125,),
                      Text("SIGN UP")
                    ],
                  ),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
