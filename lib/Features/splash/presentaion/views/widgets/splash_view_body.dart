import 'package:booklyapp/Core/utils/app_router.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Features/Home/presentation/views/home_view.dart';
import 'package:booklyapp/Features/splash/presentaion/views/widgets/sliding_text.dart';
import 'package:booklyapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  @override
  void initState() {
    super.initState();
    InitSlidingAnimation();
    NavigateToHome();
  }

  void NavigateToHome() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        // Get.to(() => const HomeView(),
        //     transition: Transition.fade, duration: kTranstionDuration);
        GoRouter.of(context).push(AppRouter.kHomeView);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(
          height: 5,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void InitSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 8), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
