import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todoapp/screen/home_page.dart';
import 'package:todoapp/todo.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController? _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  void _savedTask() {
    setState(() {
      if(_controller!.text.isNotEmpty){
        Todo.addTask(_controller!.text, false, 3);
        _controller?.clear();
      }

    });
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Go back"),
      ),
      body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                style: GoogleFonts.cedarvilleCursive(fontSize: 20),
                maxLines: null,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                    hintText: "Add Task",
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10)),
              ),
              TextButton(
                  onPressed: () {
                    _savedTask();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text("Add Task"))
            ],
          )),
    );
  }
}
