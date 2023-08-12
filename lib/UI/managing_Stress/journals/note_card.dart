import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

import 'custom_button.dart';
import 'note_model.dart';

class NoteCard extends StatelessWidget {
  const NoteCard({
    Key? key,
    required this.note,
    required this.index,
  }) : super(key: key);

  final Note note;
  final int index;

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFFBEBC1);
    final date = DateFormat.yMMMd().format(note.createdTime); //for date
    final time = DateFormat.jm().format(note.createdTime); //for time

    return Card(
      margin: const EdgeInsets.all(10),
      color: color,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // improvise and adapt using problem statement
            Row(
              children: [
                const SizedBox(
                  width: 5,
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        note.title,
                        style: const TextStyle(
                          overflow: TextOverflow.fade,
                          color: Color(0xFFBA723E),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            date,
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            time,
                            style: TextStyle(color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              color: Colors.grey,
            ),
            const SizedBox(height: 10),
            Text(
              note.description,
              style: const TextStyle(
                color: Color(0xFF77381F),
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
