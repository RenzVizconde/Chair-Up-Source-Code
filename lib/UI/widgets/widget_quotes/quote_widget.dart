import 'package:cheerup/UI/library.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:cheerup/controllers/task_controller.dart';
import '../../homepage.dart';

class QuoteWidget extends StatelessWidget {
  var quote = "";
  var author = "";
  var onShareClick;
  var onLikeClick;
  var bgColor;

  QuoteWidget(
      {this.bgColor,
      required this.quote,
      required this.author,
      this.onShareClick,
      this.onLikeClick});

  @override
  Widget build(BuildContext context) {
    TaskController _taskController = Get.put(TaskController());
    return Container(
      color: bgColor,
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 2,
          ),
          Image.asset(
            "assets/images/quote.png",
            height: 30,
            width: 30,
            color: Colors.white,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            quote,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            author,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: onLikeClick,
                  child: Row(
                    children: [
                      Container(
                        child: InkWell(
                          onTap: () {
                            Get.to(() => LibraryPage());
                            _taskController.getTasks();
                            ;
                          },
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 20, bottom: 20, left: 50, right: 50),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Continue",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Swipe right to see more quotes",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                ),
                Icon(
                  Icons.keyboard_double_arrow_right_rounded,
                  color: Colors.white,
                )
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
