import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:my_bookly/features/home/data/models/book_model/book_model.dart';

part 'featured_cubit_state.dart';

class FeaturedCubitCubit extends Cubit<FeaturedCubitState> {
  FeaturedCubitCubit() : super(FeaturedCubitInitial());
}
