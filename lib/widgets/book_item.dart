// lib/widgets/book_item.dart
import 'package:flutter/material.dart';
import '../models/book.dart';
import '../screens/detail_page.dart';

class BookItem extends StatelessWidget {
  final Book book;

  BookItem({required this.book});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(book: book),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Column(
          children: [
            Image.asset(
              book.imageUrl,
              width: 100,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 4),
            Container(
              width: 100,
              height: 20,
              child: Text(
                book.title,
                style: TextStyle(fontSize: 12),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
