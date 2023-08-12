import 'package:flutter/material.dart';

class NoteForm extends StatelessWidget {
  final String? title;
  final String? description;
  final ValueChanged<String> onChangedTitle;
  final ValueChanged<String> onChangedDescription;

  const NoteForm({
    Key? key,
    this.title = '',
    this.description = '',
    required this.onChangedTitle,
    required this.onChangedDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              buildTitle(),
              const Divider(
                color: Colors.brown,
                height: 10,
              ),
              const SizedBox(height: 8),
              buildDescription(),
              const SizedBox(height: 16),
            ],
          ),
        ),
      );

  Widget buildTitle() => TextFormField(
        maxLines: 1,
        initialValue: title,
        style: const TextStyle(
          color: Color(0xFF77381F),
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: 'New Journal',
          hintStyle: TextStyle(
            color: Color(0x8077381F),
          ),
        ),
        validator: (title) => title != null && title.isEmpty
            ? 'title cannot be empty'
            : null, //validator for checking null title
        onChanged: onChangedTitle,
      );

  Widget buildDescription() => TextFormField(
        maxLines: 5,
        initialValue: description,
        style: const TextStyle(color: Color(0xFF77381F), fontSize: 18),
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "What's on your mind?",
          hintStyle: TextStyle(
            color: Color(0x8077381F),
          ),
        ),
        validator: (description) => description != null &&
                description.isEmpty //validator for checking null description
            ? 'description cannot be empty'
            : null,
        onChanged: onChangedDescription,
      );
}
