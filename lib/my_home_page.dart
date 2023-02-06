import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int x = 20;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Counter Application"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x.toString(), style: TextStyle(
              color: Colors.red,
              fontSize: 50,
            ),)
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x);
          setState(() {

          });
        },
        child: Icon(Icons.add),
      ),


    );
  }
}
