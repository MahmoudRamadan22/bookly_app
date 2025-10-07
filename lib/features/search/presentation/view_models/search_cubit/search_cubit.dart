import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());
  SearchRepo searchRepo;
  Future<void> fetchSimilarBooks() async {
    var data = await searchRepo.fetchSimilarBooks(category: 'Programming');
    data.fold(
      (failure) => emit(SearchFailureState(failure.err)),
      (books) => emit(SearchSuccess(books)),
    );
  }
}
