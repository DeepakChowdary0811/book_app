abstract class BookEvent {}

class LoadBooksEvent extends BookEvent {}
class SortByTitleEvent extends BookEvent {}
class SortByAuthorEvent extends BookEvent {}