part of 'books_cubit.dart';

sealed class BooksState extends Equatable {
  const BooksState();

  @override
  List<Object> get props => [];
}

final class BooksInitial extends BooksState {}

final class BooksLoading extends BooksState {}

final class BooksSuccess extends BooksState {
  const BooksSuccess({required this.model});
  final List<Editor> model;

  @override
  List<Object> get props => [model];
}

final class BooksFailed extends BooksState {
  const BooksFailed(this.message);
  final String message;

  @override
  List<Object> get props => [message];
}
