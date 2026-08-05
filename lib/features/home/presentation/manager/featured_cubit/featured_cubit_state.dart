part of 'featured_cubit_cubit.dart';

sealed class FeaturedCubitState extends Equatable {
  const FeaturedCubitState();

  @override
  List<Object> get props => [];
}

class FeaturedCubitInitial extends FeaturedCubitState {}

class FeaturedCubitSuccess extends FeaturedCubitState {
  final List<BookModel> featuredBooks;
  const FeaturedCubitSuccess(this.featuredBooks);
}

class FeaturedCubitFailure extends FeaturedCubitState {
  final String errMessage;
  const FeaturedCubitFailure(this.errMessage);
}

class FeaturedCubitLoading extends FeaturedCubitState {}
