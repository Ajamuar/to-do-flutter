import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To Do App"),
        centerTitle: true,
      ),
      body: Center(
        child: ItemList(),
      ),
    );
  }
}

class ItemList extends StatefulWidget {
  @override
  ListState createState() => ListState();
}

class ListState extends State {
  List items = [
    {"task": "Hi", "isCompleted": "true"}
  ];

  @override
  Widget build(BuildContext context) {
    // return Text("Hey");
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: this.items.length,
          itemBuilder: (BuildContext context, index) {
            return Text("Task" + items[index]["task"]);
          },
        ),
      ),
    );
  }
}
