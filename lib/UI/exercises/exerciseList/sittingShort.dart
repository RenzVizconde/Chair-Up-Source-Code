import 'dart:convert';
import 'package:cheerup/UI/exercises/exercises.dart';
import 'package:cheerup/UI/managing_Stress/guides.dart';
import 'package:cheerup/UI/task_Manager/add_task_bar.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../controllers/task_controller.dart';
import '../../exerciseTab.dart';
import '../../homepage.dart';
import '../../library.dart';
import '../../managing_Stress/journals/edit_note_screen.dart';
import '../../notes/edit_note_page.dart';

class sittingShort extends StatefulWidget {
  const sittingShort({super.key});

  @override
  State<sittingShort> createState() => _sittingShortState();
}

class _sittingShortState extends State<sittingShort> {
  _initData() {}

  @override
  void initState() {
    super.initState();
    _initData();
  }

  final _taskController = Get.put(TaskController());
  final isDialOpen = ValueNotifier(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: SizedBox.expand(
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.only(top: 10, left: 30, right: 30, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/images/sittingShort.png",
                height: 100,
              ),
              Text(
                "3-5 mins",
                style: TextStyle(
                  color: Color(0xFF77381F),
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color(0xFFFBEBC1),
                  borderRadius: BorderRadius.circular(13),
                ),
                constraints: BoxConstraints(minWidth: 100, maxWidth: 250),
                child: Column(
                  children: <Widget>[
                    Text(
                      'BENEFITS:',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      ' • It helps to strengthen the patellar ligament and the quadriceps attachment in the knee.  \n • It improves upper-body strength while also assisting with shoulder and elbow mobility.   \n • It can help you gain power, endurance, and strength.  ',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                child: Column(
                  children: <Widget>[
                    Text(
                      'YOU WILL NEED:',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1. Use a firm, stable chair without wheels.                                                                                                                                                                                                                                                                                                                                  ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Your feet should be level on the floor and your knees bent at right angles.                                                                                                                                                                                                                                                                                                                                                                                     ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Dress comfortably and bring some water with you.                                                                                                                                                                                                                                                                                                                                                                                       ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Avoid seats with armrests since they restrict your movement.                                                                                                                                                                                                                                                                                                                                                                                     ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'BEGIN SEATED EXERCISE:',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'SEATED LEG EXTENSION                                                                                                                                                                                                                                                                                                                                                                           ',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1. Adjust to the edge of your chair.                                                                                                                                                                                                                                                                                                                                                                                           ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Keep your arms straight by your side.                                                                                                                                                                                                                                                                                                                                                                                      ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Lift your left leg up straight in front of you flexing your foot.                                                                                                                                                                                                                                                                                                                                                              ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingShortS1.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Hold it at the top for a few seconds before lowering it to the floor.                                                                                                                                                                                                                                                                                                                                                                   ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "5. Try to do three sets of 10 leg extensions on each leg.                                                                                                                                                                                                                                                                                                                                                                                            ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'OVER HEAD TRICEPS                                                                                                                                                                                                                                                                                                                                                                            ',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1. Grab something heavy, like a Books or even bottle of water.                                                                                                                                                                                                                                                                                                                                                                                           ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Maintaining a straight back while holding the item.                                                                                                                                                                                                                                                                                                                                                                                       ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Raise your arms above your head                                                                                                                                                                                                                                                                                                                                                                                                                  ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingShortS2.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. As you lower the object behind your head, towards the nape of your neck, engage your core and maintain your arms near to your ears.                                                                                                                                                                                                                                                                                                                                                                    ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "5. Extend your arms back up to the beginning position while keeping your upper arms near to your ears.                                                                                                                                                                                                                                                                                                                                                                                                          ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "6. Try to do three sets of 15 reps.                                                                                                                                                                                                                                                                                                                                                                                                                                        ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'GLUTE CLENCHES                                                                                                                                                                                                                                                                                                                                                                                                                           ',
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "1. Sit up straight and avoid leaning on the back of the chair. Hold on to the chair's sides.                                                                                                                                                                                                                                                                                                                                                                                            ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Lift your left leg as far as you can with your knee bent. Put your foot down firmly.                                                                                                                                                                                                                                                                                                                                                                                        ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Repeat with the opposite leg.                                                                                                                                                                                                                                                                                                                                                                                                                   ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Do 5 lifts with each leg.                                                                                                                                                                                                                                                                                                                                                                                                                                             ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Author:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
                          style: TextStyle(
                              color: Color(0xFF77381F),
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                        Text(
                          'Jane McGuire                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       ',
                          style: TextStyle(
                            color: Color(0xFF77381F),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Citation:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ',
                          style: TextStyle(
                              color: Color(0xFF77381F),
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        RichText(
                          text: new TextSpan(
                            children: [
                              new TextSpan(
                                text:
                                    'McGuire, J. (2022). 7 sitting exercises you can do at your desk. ',
                                style: TextStyle(
                                  color: Color(0xFF77381F),
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              new TextSpan(
                                text:
                                    'https://www.tomsguide.com/how-to/sitting-exercises',
                                style: new TextStyle(color: Colors.blue),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        "https://www.tomsguide.com/how-to/sitting-exercises");
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: SpeedDial(
        backgroundColor: Color(0xFFBA723E),
        overlayColor: Colors.black,
        overlayOpacity: 0.5,
        spacing: 5,
        spaceBetweenChildren: 10,
        openCloseDial: isDialOpen,
        animatedIcon: AnimatedIcons.add_event,
        buttonSize: 65,
        childrenButtonSize: 70,
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
              child: Icon(
                Icons.task_rounded,
                size: 30.0,
              ),
              backgroundColor: Color(0xFFBA723E),
              onTap: () async {
                await Get.to(() => AddTaskPage());
                _taskController.getTasks();
              },
              foregroundColor: Colors.white,
              label: 'Add Task',
              labelBackgroundColor: Color(0xFFBA723E),
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
          SpeedDialChild(
              child: Icon(
                Icons.notes,
                size: 30.0,
              ),
              backgroundColor: Color(0xFFBA723E),
              onTap: () async {
                await Get.to(() => AddEditNotePage());
              },
              foregroundColor: Colors.white,
              label: 'Add Note',
              labelBackgroundColor: Color(0xFFBA723E),
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
          SpeedDialChild(
              child: Icon(
                Icons.sticky_note_2,
                size: 30.0,
              ),
              backgroundColor: Color(0xFFBA723E),
              onTap: () async {
                await Get.to(() => EditNoteScreen());
              },
              foregroundColor: Colors.white,
              label: 'Add Journal',
              labelBackgroundColor: Color(0xFFBA723E),
              labelStyle: TextStyle(
                color: Colors.white,
                fontSize: 16,
              )),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
          color: Color(0xFFD9D0C3),
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.now_widgets,
                  color: Color(0xFF72605A),
                  size: 33,
                ),
                onPressed: () async {
                  await Get.to(() => LibraryPage());
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.health_and_safety,
                  color: Color(0xFFBA723E),
                  size: 33,
                ),
                onPressed: () async {
                  await Get.to(() => exerciseTab());
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 18),
              )
            ],
          )),
    );
  }

  _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        'Sitting Short',
        style: TextStyle(
          color: Color(0xFF77381F),
          fontWeight: FontWeight.w700,
          fontSize: 18,
        ),
      ),
      elevation: 0,
      leading: GestureDetector(
        onTap: () {
          Get.to(() => exercises());
          ;
        },
        child: Icon(
          Icons.arrow_back,
          color: Color(0xFF77381F),
          size: 25,
        ),
      ),
    );
  }
}
