import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/features/home/data/repos/home_repo.dart';

part 'newset_books_cubit_state.dart';

class NewsetBooksCubitCubit extends Cubit<NewsetBooksCubitState> {
  NewsetBooksCubitCubit(this.homeRepo) : super(NewsetBooksCubitInitial());
    final HomeRepo homeRepo;

  Future<void> fetchNewsetBooks() async {
    emit(NewsetBooksCubitLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold(
      (failure) => emit(NewsetBooksCubitFailure(failure.errorMessage)),
      (books) => emit(NewsetBooksCubitSuccess(books)),
    );
  }
}
