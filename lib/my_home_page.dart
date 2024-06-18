import 'package:animate_do/animate_do.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isAnimate = true;
  @override
  Widget build(BuildContext context) {
    final finalWith = MediaQuery.of(context).size.width;
    final finalHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        body: SizedBox(
          width: finalWith,
          height: finalHeight,
          child: Stack(
            children: [
              FadeInUp(
                child: Container(
                  width: finalWith,
                  height: finalHeight / 1.2,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/gambar1.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Stack(
                    children: [
                      RoundedPositionedWidget(
                        isAnimate: isAnimate,
                        top: 460,
                        left: null,
                        right: 180,
                        content: 'Apple Watch\n      \$849',
                      ),
                      RoundedPositionedWidget(
                        isAnimate: isAnimate,
                        top: 345,
                        left: null,
                        right: 40,
                        content: 'Iphone\n      \$100',
                      ),
                      RoundedPositionedWidget(
                        isAnimate: isAnimate,
                        top: 300,
                        left: 150,
                        right: null,
                        content: 'Jbl Tune\n      \$375',
                      ),
                      RoundedPositionedWidget(
                        isAnimate: isAnimate,
                        top: 520,
                        left: 60,
                        right: null,
                        content: 'Macbook Pro\n      \$1.375',
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 0,
                child: Container(
                  width: finalWith,
                  height: 120,
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Product Detail',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RoundedPositionedWidget extends StatelessWidget {
  final double top;
  final double? left;
  final double? right;
  final String content;

  final bool isAnimate;
  const RoundedPositionedWidget({
    super.key,
    required this.isAnimate,
    required this.top,
    required this.left,
    required this.right,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      child: Tooltip(
        padding: const EdgeInsets.all(10),
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
        message: content,
        child: AvatarGlow(
          animate: isAnimate,
          duration: const Duration(seconds: 5),
          glowColor: const Color.fromARGB(255, 9, 136, 240),
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
