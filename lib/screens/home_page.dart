// lib/screens/home_page.dart
import 'package:flutter/material.dart';
import '../widgets/sort_by_row.dart';
import '../widgets/book_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book Club')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SortByRow(),
            SizedBox(height: 16),
            Text(
              'Books',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Expanded(
              child: BookList(),
            ),
          ],
        ),
      ),
    );
  }
}
