// lib/screens/detail_page.dart
import 'package:flutter/material.dart';
import '../models/book.dart';

class DetailPage extends StatelessWidget {
  final Book book;

  DetailPage({required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Detail'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              // Implement sharing functionality if needed
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Book Cover Image
            Center(
              child: Image.asset(
                book.imageUrl,
                width: 150,
                height: 220,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            // Book Title
            Text(
              book.title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            // Book Author
            Text(
              book.author,
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.grey[700]),
            ),
            SizedBox(height: 16),
            // Book Description
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  book.description,
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
