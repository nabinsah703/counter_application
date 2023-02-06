import 'package:counterapp/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  CounterController controller = Get.put(CounterController());
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
            Obx(() => Text(controller.counter.toString(), style: TextStyle(
              color: Colors.red,
              fontSize: 50,
            ),))
          ],

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
        controller.incrementCounter();},
        child: Icon(Icons.add),
      ),


    );
  }
}
