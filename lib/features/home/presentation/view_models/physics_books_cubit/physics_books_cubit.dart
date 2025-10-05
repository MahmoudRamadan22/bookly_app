import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'physics_books_state.dart';

class PhysicsBooksCubit extends Cubit<PhysicsBooksState> {
  PhysicsBooksCubit(this.homeRepo) : super(PhysicsBooksInitial());
  HomeRepo homeRepo;
  Future<void> fetchPhysicsBooks() async {
    emit(PhysicsBooksLoading());
    var result = await homeRepo.fetchPhysicsBooks();
    result.fold(
      (failure) => emit(PhysicsBooksFailure(failure.err)),
      (books) => emit(PhysicsBooksSuccess(books)),
    );
  }
}
