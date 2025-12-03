import 'package:flutter/material.dart';
import 'package:todo_list/core/app_color.dart';
import 'package:todo_list/core/app_text_styel.dart';
import 'package:todo_list/featuer/screens/add_task_screen.dart';
class TodoListScreen extends StatelessWidget {
  const TodoListScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppBar(
          backgroundColor: AppColor.appbar,
          title: const Text('My Tasks', style: AppTextStyel.te1bold50),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 10,
        backgroundColor: AppColor.button,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) => const AddTaskScreen(),
          ));
        },
        label: Text('Add Task', style: AppTextStyel.te2bold30),
        icon: const Icon(Icons.add),
      ),
    );
  }
}
