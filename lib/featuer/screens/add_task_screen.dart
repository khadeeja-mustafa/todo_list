import 'package:flutter/material.dart';
import 'package:todo_list/core/app_color.dart';
import 'package:todo_list/core/app_text_styel.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: TextField(
                style: AppTextStyel.te3bold40,
                decoration: InputDecoration(
                  hintText: 'Add Task',
                  hintStyle: AppTextStyel.te3bold40,
                  
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.button,
                  ),
                 child:
                 const Text('Save', style: AppTextStyel.te2bold30),

                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}