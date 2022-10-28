import 'package:flutter/material.dart';

class fif extends StatefulWidget {
  const fif({Key? key}) : super(key: key);

  @override
  State<fif> createState() => _fifState();
}

class _fifState extends State<fif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("Online reportings",style: TextStyle(color: Colors.white10,fontSize: 10),)
          ],
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
