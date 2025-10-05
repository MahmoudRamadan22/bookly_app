part of 'programming_books_cubit.dart';

sealed class ProgrammingBooksState extends Equatable {
  const ProgrammingBooksState();

  @override
  List<Object> get props => [];
}

final class ProgrammingBooksInitial extends ProgrammingBooksState {}

final class ProgrammingBooksLoading extends ProgrammingBooksState {}

final class ProgrammingBooksSuccess extends ProgrammingBooksState {
  final List<BookModel> books;
  const ProgrammingBooksSuccess(this.books);
}

final class ProgrammingBooksFailure extends ProgrammingBooksState {
  final String errMsg;
  const ProgrammingBooksFailure(this.errMsg);
}
