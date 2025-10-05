import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'programming_books_state.dart';

class ProgrammingBooksCubit extends Cubit<ProgrammingBooksState> {
  ProgrammingBooksCubit(this.homeRepo) : super(ProgrammingBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchProgrammingBooks() async {
    emit(ProgrammingBooksLoading());
    var result = await homeRepo.fetchProgrammingBooks();
    result.fold(
      (failure) => emit(ProgrammingBooksFailure(failure.err)),
      (books) => emit(ProgrammingBooksSuccess(books)),
    );
  }
}
