import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bookly/constant.dart';
import 'package:my_bookly/core/utils/app_router.dart';
import 'package:my_bookly/core/utils/service_lacotr.dart';
import 'package:my_bookly/features/home/data/repos/home_repo_impl.dart';
import 'package:my_bookly/features/home/presentation/manager/featured_cubit/featured_cubit_cubit.dart';
import 'package:my_bookly/features/home/presentation/manager/newset_books_cubit/newset_books_cubit_cubit.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedCubitCubit(
               getIt.get<HomeRepoImpl>(),
                    ),
        ),
        BlocProvider(
          create: (context) =>
              NewsetBooksCubitCubit(
                getIt.get<HomeRepoImpl>(),
                    ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
