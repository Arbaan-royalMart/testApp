import 'package:code_magic_test/model.dart';
import 'package:code_magic_test/service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  final ApiService _apiSer = ApiService();
  BooksCubit() : super(BooksInitial());

  Future<void> getList() async {
    emit(BooksLoading());
    try {
      final data = await _apiSer.fetchSummary();
      emit(BooksSuccess(model: data));
    } catch (e) {
      emit(BooksFailed(e.toString()));
    }
  }
}
