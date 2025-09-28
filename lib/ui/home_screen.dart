import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/provider/todo_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Daily Todos", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        scrolledUnderElevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                // context.read<TodoProvider>().dispose();
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return _addTodoDialogbox(context);
                  },
                );
              },
              icon: Icon(Icons.add, color: Colors.blueAccent),
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: SafeArea(child: Column()),
    );
  }

  Widget _addTodoDialogbox(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 20),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 1, 149, 255),
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Add New Todo",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            _customTextField(
              title: "Title",
              hintText: "Title",
              controller: context.watch<TodoProvider>().titleController,
              context: context,
            ),
            const SizedBox(height: 15),
            _customTextField(
              title: "Description",
              hintText: "Description...",
              maxLines: 5,
              controller: context.watch<TodoProvider>().descriptionController,
              context: context,
            ),
            const SizedBox(height: 15),
            _customTextField(
              title: "Due Date",
              hintText: "Due Date",
              isDatePicker: true,
              controller: context.watch<TodoProvider>().dueDateController,
              context: context,
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "Add",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _customTextField({
    required String title,
    required String hintText,
    TextEditingController? controller,
    int? maxLines,
    bool isDatePicker = false,
    required BuildContext context,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          style: TextStyle(color: Colors.white),
          controller: controller,
          cursorColor: Colors.white,
          maxLines: maxLines ?? 1,
          decoration: InputDecoration(
            hintText: hintText,
            labelText: title,
            hintStyle: TextStyle(color: Colors.white),
            labelStyle: TextStyle(color: Colors.white),
            fillColor: Colors.white,
            focusColor: Colors.white,
            suffixIcon: isDatePicker
                ? IconButton(
                    onPressed: () {
                      context.read<TodoProvider>().selectDate(context);
                    },
                    icon: Icon(Icons.calendar_month, color: Colors.white),
                  )
                : null,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white, width: 1),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 1),
            ),
          ),
          validator: (String? value) {
            if (value == null || value.trim().isEmpty) {
              return "Please enter the valid $title";
            } else {
              return null;
            }
          },
        ),
      ],
    );
  }
}
