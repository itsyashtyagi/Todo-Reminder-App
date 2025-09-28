import 'package:flutter/material.dart';

class TodoProvider extends ChangeNotifier {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController dueDateController = TextEditingController();

  DateTime? selectedDate;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(2021, 7, 25),
      lastDate: DateTime(2050),
      initialDate: DateTime.now(),
    );

    dueDateController.text =
        "${pickedDate?.day}/${pickedDate?.month}/${pickedDate?.year}";
    notifyListeners();
  }

  @override
  void dispose() {
    titleController.text = "";
    descriptionController.text = "";
    dueDateController.text = "";
    super.dispose();
  }
}
