import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}
final TextEditingController textController = TextEditingController();

class _HomePageState extends State<HomePage> {
  void openNoteBox() {
    showDialog(context: context,
      builder: (context) => AlertDialog(
      content: TextField(
        controller: textController,

      ),
      actions: [
        //button to save
        ElevatedButton(
          onPressed: () {},
          child: Text('ADD'),
        )
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notes'),),
      floatingActionButton: FloatingActionButton(
      onPressed: openNoteBox,
      child: const Icon(Icons.add),
      ),
    );
  }
}