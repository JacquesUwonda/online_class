import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:online_class/Images_urls/app_images_url.dart';
import 'package:online_class/features/welcome/logic/cubit/welcome_dots_cubit.dart';
import 'package:online_class/features/welcome/utils/page_controller.dart';
import 'package:online_class/features/welcome/utils/welcome_strings.dart';
import 'package:online_class/features/welcome/widgets/page_view_pages.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WelcomeDotsCubit, int>(
        builder: (context, state) {
          return Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                controller: PagesController.pageController,
                onPageChanged: (index) {
                  context.read<WelcomeDotsCubit>().setPage(index);
                },
                //Onboarding Pages
                children: [
                  Pages(
                    1,
                    WelcomeStrings.welcomeText,
                    WelcomeStrings.subtitle1,
                    AppImageUrl.welcomeManImage,
                    context,
                  ),
                  Pages(
                    2,
                    WelcomeStrings.title2,
                    WelcomeStrings.subtitle2,
                    AppImageUrl.welcomeReadingImage,
                    context,
                  ),
                  Pages(
                    3,
                    WelcomeStrings.title3,
                    WelcomeStrings.subtitle3,
                    AppImageUrl.welcomeBoyImage,
                    context,
                  ),
                ],
              ),
              //button and DotsIndicator
              Positioned(
                bottom: 70.h,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        if (state < 2) {
                          PagesController.pageController.animateToPage(
                              state + 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        } else {}
                      },
                      child: Container(
                        width: 150.w,
                        height: 50.h,
                        margin:
                            EdgeInsets.only(top: 30.h, left: 25.w, right: 25.w),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.all(
                            Radius.circular(50.w),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: Center(
                          child: Text(
                            state < 2
                                ? WelcomeStrings.btnTextNext
                                : WelcomeStrings.btnTextGetStarted,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: 16.sp),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    DotsIndicator(
                      position: state,
                      dotsCount: 3,
                      mainAxisAlignment: MainAxisAlignment.center,
                      decorator: DotsDecorator(
                        color: Colors.grey,
                        activeColor: Colors.blue,
                        activeSize: const Size(20, 8),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //Skip button at the top-right
              state < 2
                  ? Positioned(
                      top: 55,
                      right: 20,
                      child: GestureDetector(
                        onTap: () {
                          PagesController.pageController.animateToPage(3,
                              duration: const Duration(microseconds: 200),
                              curve: Curves.easeIn);
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 8),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: const Text(WelcomeStrings.skip),
                        ),
                      ),
                    )
                  : Container(),
            ],
          );
        },
      ),
    );
  }
}
