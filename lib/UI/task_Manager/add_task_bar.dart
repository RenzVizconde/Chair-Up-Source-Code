import 'package:cheerup/UI/library.dart';
import 'package:cheerup/UI/widgets/widget_TaskManager/button.dart';
import 'package:cheerup/UI/widgets/theme.dart';
import 'package:cheerup/UI/widgets/widget_TaskManager/input_field.dart';
import 'package:cheerup/controllers/task_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../models/task.dart';
import '../homepage.dart';

class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  final TaskController _taskController = Get.put(TaskController());
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _noteController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  String _endTime = "9:30 PM";
  String _startTime = DateFormat("hh:mm a").format(DateTime.now()).toString();
  int _selectedRemind = 5;
  List<int> remindList = [0, 5];
  String _selectedRepeat = "Once";
  List<String> repeatList = ["Once", "Daily"];
  int _selectedColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Add Task",
            style: subHeadingStyle,
          ),
          MyInputField(
            title: "Title",
            hint: "Enter your title",
            controller: _titleController,
          ),
          MyInputField(
            title: "Note",
            hint: "Enter your note",
            controller: _noteController,
          ),
          MyInputField(
            title: "Date",
            hint: DateFormat.yMd().format(_selectedDate),
            widget: IconButton(
              icon: Icon(
                Icons.calendar_today_outlined,
                color: Colors.grey,
              ),
              onPressed: () {
                print("Hi there");
                _getDateFromUser();
              },
            ),
          ),
          Row(
            children: [
              Expanded(
                child: MyInputField(
                  title: "Start Date",
                  hint: _startTime,
                  widget: IconButton(
                    onPressed: () {
                      _getTimeFromUser(isStartTime: true);
                    },
                    icon: Icon(Icons.access_time_rounded, color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Expanded(
                child: MyInputField(
                  title: "End Date",
                  hint: _endTime,
                  widget: IconButton(
                    onPressed: () {
                      _getTimeFromUser(isStartTime: false);
                    },
                    icon: Icon(Icons.access_time_rounded, color: Colors.grey),
                  ),
                ),
              )
            ],
          ),
          MyInputField(
            title: "Remind",
            hint: "$_selectedRemind minutes early",
            widget: DropdownButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
              iconSize: 32,
              elevation: 4,
              style: subTitleStyle,
              underline: Container(
                height: 0,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedRemind = int.parse(newValue!);
                });
              },
              items: remindList.map<DropdownMenuItem<String>>((int value) {
                return DropdownMenuItem<String>(
                    value: value.toString(), child: Text(value.toString()));
              }).toList(),
            ),
          ),
          MyInputField(
            title: "Repeat",
            hint: "$_selectedRepeat",
            widget: DropdownButton(
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
              iconSize: 32,
              elevation: 4,
              style: subTitleStyle,
              underline: Container(
                height: 0,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedRepeat = newValue!;
                });
              },
              items: repeatList.map<DropdownMenuItem<String>>((String? value) {
                return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value!, style: TextStyle(color: Colors.grey)));
              }).toList(),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _colorPallete(),
              MyButton(
                  label: "Create Task",
                  onTap: (() {
                    _validateDate();
                  })),
            ],
          ),
          SizedBox(
            height: 20,
          )
        ])),
      ),
    );
  }

  _validateDate() {
    if (_titleController.text.isNotEmpty && _noteController.text.isNotEmpty) {
      _addTaskToDb();
      Get.back();
    } else if (_titleController.text.isEmpty || _noteController.text.isEmpty) {
      Get.snackbar("Required", "All fields are required !",
          snackPosition: SnackPosition.BOTTOM,
          colorText: pinkClr,
          backgroundColor: Colors.white,
          icon: Icon(Icons.warning_amber_rounded));
    }
  }

  _addTaskToDb() async {
    int value = await _taskController.addTask(
        task: Task(
      note: _noteController.text,
      title: _titleController.text,
      date: DateFormat.yMd().format(_selectedDate),
      startTime: _startTime,
      endTime: _endTime,
      remind: _selectedRemind,
      repeat: _selectedRepeat,
      color: _selectedColor,
      isCompleted: 0,
    ));
    print("My id is " + "$value");
  }

  _colorPallete() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Color",
          style: titleStyle,
        ),
        SizedBox(
          height: 8.0,
        ),
        Wrap(
            children: List<Widget>.generate(3, (int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _selectedColor = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 14,
                backgroundColor: index == 0
                    ? primaryClr
                    : index == 1
                        ? pinkClr
                        : yellowClr,
                child: _selectedColor == index
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                        size: 16,
                      )
                    : Container(),
              ),
            ),
          );
        })),
      ],
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Get.to(() => LibraryPage());
          ;
        },
        child: Icon(
          Icons.arrow_back,
          color: Color(0xFF72605A),
          size: 25,
        ),
      ),
      actions: [
        Icon(
          Icons.person,
          size: 20,
        ),
        SizedBox(
          width: 20,
        ),
      ],
    );
  }

  _getDateFromUser() async {
    DateTime? _pickerDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2121));
    if (_pickerDate != null) {
      setState(() {
        _selectedDate = _pickerDate;
        print(_selectedDate);
      });
    } else {
      print("It's null or something is wrong");
    }
  }

  _getTimeFromUser({required bool isStartTime}) async {
    var pickedTime = await _showTimePicker();
    String _formatedTime = pickedTime.format(context);
    if (pickedTime == null) {
      print("Time canceled");
    } else if (isStartTime == true) {
      setState(() {
        _startTime = _formatedTime;
      });
    } else if (isStartTime == false) {
      setState(() {
        _endTime = _formatedTime;
      });
    }
  }

  _showTimePicker() {
    return showTimePicker(
        initialEntryMode: TimePickerEntryMode.input,
        context: context,
        initialTime: TimeOfDay(
          //_startTime --> 10:30 AM
          hour: int.parse(_startTime.split(":")[0]),
          minute: int.parse(_startTime.split(":")[1].split(" ")[0]),
        ));
  }
}
