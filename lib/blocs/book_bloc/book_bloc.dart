// lib/blocs/book_bloc/book_bloc.dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'book_event.dart';
import 'book_state.dart';
import '../../models/book.dart';

class BookBloc extends Bloc<BookEvent, BookState> {
  List<Book> bookList = [];

  BookBloc() : super(BookLoadingState()) {
    on<LoadBooksEvent>((event, emit) {
      // Load a more extensive list of books
      bookList = [
        Book(
          id: '1',
          title: 'Astrophysics for people in hurry',
          author: 'Alice Hoffman',
          description: 'A tale of perseverance and finding beauty in life’s challenges.',
          imageUrl: 'assets/images/astro.jpeg',
        ),
        Book(
          id: '2',
          title: 'How to Build a Car',
          author: 'Julian Barnes',
          description: 'An exploration of memory and its effects on life’s choices.',
          imageUrl: 'assets/images/how_to_car.jpeg',
        ),
        Book(
          id: '3',
          title: 'Mobile Application Development',
          author: 'Roald Dahl',
          description: 'A classic children’s novel about a young boy’s magical adventure.',
          imageUrl: 'assets/images/mobile_app_dev.jpeg',
        ),
        Book(
          id: '4',
          title: 'My Hero Academia',
          author: 'Celeste Ng',
          description: 'A story about family, secrets, and the impact of choices.',
          imageUrl: 'assets/images/my_hero_academia.jpeg',
        ),
        Book(
          id: '5',
          title: 'One Piece',
          author: 'Isaac Nelson',
          description: 'A thriller about a detective facing his past while solving a case.',
          imageUrl: 'assets/images/one_piece.jpeg',
        ),
        Book(
          id: '6',
          title: 'The Lighting Thief',
          author: 'Alex Michaelides',
          description: 'A psychological thriller about a woman who shoots her husband and goes silent.',
          imageUrl: 'assets/images/the_lighting_thief.jpg',
        ),
        Book(
          id: '7',
          title: 'Two Storm Wood',
          author: 'Tara Westover',
          description: 'A memoir about growing up in a strict and abusive household in rural Idaho.',
          imageUrl: 'assets/images/two_storm_wood.jpg',
        ),
      ];
      emit(BookListState(bookList));
    });

    on<SortByTitleEvent>((event, emit) {
      bookList.sort((a, b) => a.title.compareTo(b.title));
      emit(SortedByTitleState(bookList));
    });

    on<SortByAuthorEvent>((event, emit) {
      bookList.sort((a, b) => a.author.compareTo(b.author));
      emit(SortedByAuthorState(bookList));
    });
  }
}
