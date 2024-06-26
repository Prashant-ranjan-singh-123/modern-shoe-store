import 'package:animated_movies_app/constants/ui_constant.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(72, 19, 103, 1.0),
      body: SingleChildScrollView(
        child: Container(
          width: Get.width,
          height: Get.height,
          decoration: UiConstants.backgroundGradient,
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: UiConstants.returnSmallerWidthOrHeight()*0.5,
                      height: UiConstants.returnSmallerWidthOrHeight()*0.5,
                      child: Image.asset('assets/icons/no_favourite.png', fit: BoxFit.contain,).animate()
                          .fadeIn(duration: 2000.ms)
                          .slideY(duration: 1000.ms, curve: Curves.decelerate),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    AutoSizeText(
                      maxLines: 1,
                      '"Your favourite list is empty."',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: 22.50,
                        fontWeight: FontWeight.w600,
                        height: 0.13,
                      ),
                    ).animate().fadeIn(duration: 1000.ms, delay: 500.ms),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Let\'s explore food today',
                      style: GoogleFonts.nunito(
                        color: Colors.white60,
                        fontSize: 12.50,
                        fontWeight: FontWeight.w400,
                        height: 0.13,
                      ),
                    ).animate()
                        .fadeIn(duration: 1500.ms, delay: 500.ms).scaleY(
                        duration: 1000.ms, curve: Curves.decelerate
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
