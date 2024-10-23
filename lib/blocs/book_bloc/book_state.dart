// lib/blocs/book_bloc/book_state.dart
import '../../models/book.dart';

abstract class BookState {}

class BookLoadingState extends BookState {}

class BookListState extends BookState {
  final List<Book> books;
  BookListState(this.books);
}

class SortedByTitleState extends BookListState {
  SortedByTitleState(super.books);
}

class SortedByAuthorState extends BookListState {
  SortedByAuthorState(super.books);
}

class BookDetailState extends BookState {
  final Book book;
  BookDetailState(this.book);
}
