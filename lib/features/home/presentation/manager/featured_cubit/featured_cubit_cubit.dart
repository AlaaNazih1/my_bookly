import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/features/home/data/repos/home_repo.dart';

part 'featured_cubit_state.dart';

class FeaturedCubitCubit extends Cubit<FeaturedCubitState> {
  FeaturedCubitCubit(this.homeRepo) : super(FeaturedCubitInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedCubitLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) => emit(FeaturedCubitFailure(failure.errorMessage)),
        (books) => emit(FeaturedCubitSuccess(books)));
  }
}
