// lib/widgets/book_list.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/book_bloc/book_bloc.dart';
import '../blocs/book_bloc/book_state.dart';
import '../models/book.dart';
import 'book_item.dart';

class BookList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBloc, BookState>(
      builder: (context, state) {
        if (state is BookLoadingState) {
          return Center(child: CircularProgressIndicator());
        } else if (state is BookListState ||
            state is SortedByTitleState ||
            state is SortedByAuthorState) {
          final books = (state as BookListState).books;
          return SizedBox(
            height: 220, // Set a fixed height for the ListView
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: books.length,
              itemBuilder: (context, index) {
                final book = books[index];
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: BookItem(book: book),
                );
              },
            ),
          );
        }
        return Container();
      },
    );
  }
}
