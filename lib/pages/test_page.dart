import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  TestPageState createState() => TestPageState();
  const TestPage({ Key? key,}) : super(key: key);
}

class TestPageState extends State<TestPage> {
  int counter = 10;

  @override
  void initState() {
      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Statefull Widget"),
        ),
        body: _buildBody(context),
        floatingActionButton: FloatingActionButton(
         child: const Icon(Icons.add),
          onPressed: () {
              setState(() {
                  ++counter;
              }
           );
        }),
    );
  }


  Widget _buildBody(BuildContext context) {
    return Center(
      child: Text("The counter is: $counter",
                  style: const TextStyle(color: Colors.white),
                ),
      );  
   }
}
