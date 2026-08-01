import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';
import 'package:my_bookly/constant.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/features/home/data/presentation/views/home_view.dart';
import 'package:my_bookly/features/splash/data/presentation/views/widgets/sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    super.initState();

    initSlidingAnimation();
    navigateToHome();
  }



@override
  void dispose() {
    
    super.dispose();

    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetsData.logo), 
      const SizedBox(height: 4),
      SlidingText(slidingAnimation: _slidingAnimation),
      ],
    );
  }


//********************init Sliding Animation ******************** */
    void initSlidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 2),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
  }


//********************navigate to Home ******************** */

    void navigateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => const HomeView(),
        transition: Transition.fade,
        duration: kTransitionDuration,
      );
    });
  }

}




