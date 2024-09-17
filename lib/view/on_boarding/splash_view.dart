import 'package:duggar_dost/view/login/welcome_view.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget{
  const SplashView({super.key});

  @override
  State<StatefulWidget> createState() => _SplashViewState();


}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    goWelcomePage();
  }

  void goWelcomePage() async {
await Future.delayed(const Duration(seconds: 2));
Navigator.push(context,MaterialPageRoute(builder: (context)=> const WelcomeView()));
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery
        .of(context)
        .size;

    return Scaffold(

      body: Stack(

        alignment: Alignment.center,
        children: [
          Image.asset("assets/img/2.png",
            width: media.width,
            height: media.height,
           // fit: BoxFit.cover,
        ),
        ],
      ),
    );
  }
}
