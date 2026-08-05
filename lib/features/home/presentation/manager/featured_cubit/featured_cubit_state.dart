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
  final String errorMessage;
  const FeaturedCubitFailure(this.errorMessage);
}

class FeaturedCubitLoading extends FeaturedCubitState {}
