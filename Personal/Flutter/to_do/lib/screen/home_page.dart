import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do/todo.dart';
import 'add_task.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _greeting = '';

  @override
  void initState() {
    _setGreeting();
    super.initState();
  }

  void _setGreeting() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      setState(() {
        _greeting = "Good Morning";
      });
    } else if (hour < 18) {
      setState(() {
        _greeting = "Good Afternoon";
      });
    } else {
      setState(() {
        _greeting = "Good Evening";
      });
    }
  }

  void onTaskClick() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF111C2F),
      appBar: AppBar(
        leading: IconButton(
          icon: const CircleAvatar(
            backgroundImage: AssetImage('assets/pics.png'),
            radius: 20.0,
          ),
          onPressed: () {},
        ),
        elevation: 0.0,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20, top: 10),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: const Color(0xFF202b40)),
                        child: IconButton(
                          icon: const Icon(Icons.notifications,
                              color: Colors.white),
                          onPressed: () {},
                        ),
                      ),
                      Positioned(
                        top: 2,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 4, bottom: 4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Text(
                            '100', // Notification badge content
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color(0xFF202b40)),
                    child: IconButton(
                      icon: const Icon(Icons.add, color: Colors.white),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddTaskScreen(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ))
        ],
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          top: 20,
        ),
        child: Column(
          children: [
            Text(
              style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
              _greeting,
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: Todo.allTask.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      Todo.allTask[index].note,
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    trailing: IconButton(
                      icon: Icon(Todo.allTask[index].isCompleted
                          ? Icons.check_box
                          : Icons.check_box_outline_blank),
                      color: Colors.white,
                      onPressed: () {
                        setState(() {
                          Todo.allTask[index].isCompleted =
                              !Todo.allTask[index].isCompleted;
                        });
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
