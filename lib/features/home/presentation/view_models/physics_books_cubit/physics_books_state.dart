part of 'physics_books_cubit.dart';

sealed class PhysicsBooksState extends Equatable {
  const PhysicsBooksState();

  @override
  List<Object> get props => [];
}

final class PhysicsBooksInitial extends PhysicsBooksState {}

final class PhysicsBooksLoading extends PhysicsBooksState {}

final class PhysicsBooksSuccess extends PhysicsBooksState {
  final List<BookModel> books;
  const PhysicsBooksSuccess(this.books);
}

final class PhysicsBooksFailure extends PhysicsBooksState {
  final String errMsg;
  const PhysicsBooksFailure(this.errMsg);
}
