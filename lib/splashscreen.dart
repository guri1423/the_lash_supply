import 'dart:async';
import 'package:flutter/material.dart';
import 'package:the_lash_supply/home1.dart';
import 'dart:math'as math;
import 'package:the_lash_supply/modules/bottom_nav_bar/pages/bottom_navigation.dart';
import 'package:the_lash_supply/modules/home/widgets/search_widget.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );
  /*with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<AlignmentGeometry> _animation = Tween<AlignmentGeometry>(
    begin: Alignment.bottomLeft,
    end: Alignment.center,
  ).animate(
    CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    ),
  );*/
  /*final starbackground = Image.asset('assets/images/background.png',
    fit:BoxFit.cover,
    width: double.infinity,
    height: double.infinity,);*/
  bool shouldPop = true;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4),
            ()=>Navigator.pushReplacement(context,
      MaterialPageRoute(builder:
          (context) => Home1())
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splashscreen.png"),
              fit: BoxFit.cover,
            )
        ),
        //starbackground();
        //color: Color.fromRGBO(244, 196, 48, 1),
        child: ScaleTransition(
          scale: _animation,
          child: Container(
            height: 60,
            width: 60,
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Image.asset('assets/images/lash_supply1.png'),
            ),
          ),
        ),
      ),
    );
    /* return Stack(
      children: <Widget>[
        starbackground,
        Center(
        child:TweenAnimationBuilder(
          duration: Duration(seconds:10),
          tween: Tween<double>(begin: 0,end: 2 * math.pi),
          builder: (_, double angle,__){
            return Transform.rotate(angle: angle,
            child: Image.asset('assets/images/home.png'),);
          }
        )
        ),
        ],
    );*/
    //return Scaffold(
    /*body: Container(
      height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
        child: Image.asset('assets/images/home.png',
        width: 150,
        height: 150,
        fit: BoxFit.fill,
          ),
        ),
        ),*/
  }

}

