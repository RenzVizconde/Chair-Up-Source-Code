import 'dart:convert';
import 'package:cheerup/UI/homepage.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:cheerup/UI/widgets/widget_quotes/quote_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:random_color/random_color.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/quote_model.dart';

class quote_popup extends StatefulWidget {
  @override
  _Quote_popupState createState() => _Quote_popupState();
}

class _Quote_popupState extends State<quote_popup> {
  var apiURL = "https://type.fit/api/quotes";
  PageController controller = PageController();

  Future<List<dynamic>> getPost() async {
    final response = await http.get(Uri.parse('$apiURL'));
    return postFromJson(response.body);
  }

  List<dynamic> postFromJson(String str) {
    List<dynamic> jsonData = json.decode(str);
    jsonData.shuffle();
    return jsonData;
  }

  RandomColor _randomColor = RandomColor();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<dynamic>>(
        future: getPost(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return PageView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  var model = snapshot.data![index] ?? 0;
                  return QuoteWidget(
                    quote: model["text"].toString(),
                    author: model["author"].toString(),
                    bgColor: _randomColor.randomColor(
                      colorHue: ColorHue.multiple(
                        colorHues: [ColorHue.red, ColorHue.blue],
                      ),
                    ),
                  );
                });
          } else
            return CircularProgressIndicator();
        },
      ),
    );
  }
}
