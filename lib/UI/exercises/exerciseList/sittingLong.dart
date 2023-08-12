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

class sittingLong extends StatefulWidget {
  const sittingLong({super.key});

  @override
  State<sittingLong> createState() => _sittingLongState();
}

class _sittingLongState extends State<sittingLong> {
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
                "assets/images/sitting long.png",
                height: 100,
              ),
              Text(
                "10-15 mins",
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
                      ' • Good for posture  \n • Maintain and Develop flexibility in the upper back    \n • Strengthen hips and thighs \n • Lowers the risk of developing a blood clot \n • Builds shoulder strength \n • Good for improving neck mobility and flexibility \n • Good for loosening tight neck muscles   ',
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
                      "1. Use a firm, stable chair without wheels.                                                                                                                                                                                                                                                                                                                                                                              ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Your feet should be level on the floor and your knees bent at right angles.                                                                                                                                                                                                                                                                    ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Dress comfortably and bring some water with you.                                                                                                                                                                                                                                                                                                                          ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Avoid seats with armrests since they restrict your movement.                                                                                                                                                                                                                                                                    ",
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
                      'CHEST STRETCH                                                                                                                                                                                                                                                                                                                                                                        ',
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
                      "1. Sit upright and away from the back of the chair.                                                                                                                                                                                                                                                                          ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Pull your shoulders back and down.                                                                                                                                                                                                                                                                                            ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Extend your arms out to the side.                                                                                                                                                                                                                                                                                                ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingChestStretch.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Gently push your chest forward and up until you feel a stretch across your chest.                                                                                                                                                                                                                                                                   ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "5. Hold it for 5 to 10 seconds.                                                                                                                                                                                                                                                                                                                                  ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'UPPER BODY TWIST                                                                                                                                                                                                                                                                                                                                                                           ',
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
                      "1. Sit up straight, feet level on the floor, arms crossed, and reach for your shoulders.                                                                                                                                                                                                                                                                          ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Turn your upper body to the left as far as you can without shifting your hips. Hold the position for 5 seconds.                                                                                                                                                                                                                                                                       ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingUpperBodyTwist.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Then on the right side.                                                                                                                                                                                                                                                                                                                                                                            ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Do 5 times on each side.                                                                                                                                                                                                                                                                                                                           ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'HIP MARCHING                                                                                                                                                                                                                                                                                                                                                       ',
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
                      "1. Sit up straight and avoid leaning on the back of the chair. Hold on to the chair's sides.                                                                                                                                                                                                                                                                            ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Lift your left leg as far as you can with your knee bent. Put your foot down firmly.                                                                                                                                                                                                                                                                                    ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingHipMarching.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Repeat with the opposite leg.                                                                                                                                                                                                                                                                                                                                                       ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Do 5 lifts with each leg.                                                                                                                                                                                                                                                                                                                                                                                                                                     ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'ANKLE STRETCH                                                                                                                                                                                                                                                                                                                                                                                                                                                                ',
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
                      "1. Sit up straight, grip the chair's side, and lift your left leg off the floor.                                                                                                                                                                                                                                                                                                                                                                                     ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Point your toes away from you while keeping your leg straight and lifted.                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingAnkleStretch.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Point your toes back towards you.                                                                                                                                                                                                                                                                                                                                                                                                                                                                ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Try 2 sets of 5 stretches with each foot.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'ARM RAISES                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ',
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
                      "1. Sit up straight with your arms by your sides.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. With palms forwards, raise both arms out and to the side, and up as far as is comfortable.                                                                                                                                                                                                                                                                                                                                                                                                   ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingArmRaises.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Return to the starting position.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Keep your shoulders low and your arms straight throughout. As you lift your arms, exhale and inhale.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "5. Repeat 5 times.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'NECK ROTATION                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ',
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
                      "1. Sit up right with your shoulders down. Look straight ahead.                                                                                                                                                                                                                                                                                                                                                         ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Slowly turn your head towards your left shoulder as far as is comfortable.                                                                                                                                                                                                                                                                                                                                                                                                             ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingNeckRotation.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Hold 5 second and return to the starting position.                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Repeat on the right.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "5. Do 3 rotations on each side.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'NECK STRETCHES                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      ',
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
                      "1. Sit up right, look straight ahead and hold your left shoulder down with your right hand.                                                                                                                                                                                                                                                                                                                                                                                                                             ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "2. Slowly tilt your head to the right while holding your shoulder down.                                                                                                                                                                                                                                                                                                                                                                                                                                                                             ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'assets/images/sittingNeckStretches.jpg',
                      width: 400,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "3. Repeat on the opposite side.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ",
                      style: TextStyle(
                        color: Color(0xFF77381F),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "4. Hold each stretch for 5 seconds and repeat 3 times on each side.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ",
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
                          'Author:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     ',
                          style: TextStyle(
                              color: Color(0xFF77381F),
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                        Text(
                          'National Health Service UK (NHS)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ',
                          style: TextStyle(
                            color: Color(0xFF77381F),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Citation:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    ',
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
                                    'https://www.nhs.uk/live-well/exercise/strength-and-flexibility-exercises/sitting-exercises/',
                                style: new TextStyle(color: Colors.blue),
                                recognizer: new TapGestureRecognizer()
                                  ..onTap = () {
                                    launch(
                                        "https://www.nhs.uk/live-well/exercise/strength-and-flexibility-exercises/sitting-exercises/");
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
        'Sitting Long',
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
