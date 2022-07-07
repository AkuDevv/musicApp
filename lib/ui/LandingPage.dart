import 'package:flutter/material.dart';
import 'package:musicapp/ui/HomePage.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/landing4.png'),
          alignment: Alignment.bottomCenter,
          ),
          gradient: RadialGradient(
            center: Alignment(1,0.6),
            radius: 2,
            stops: [
              0.1,
              0.3,
              0.7
            ],
            colors: [
              Colors.purple,
              Color.fromARGB(255, 2, 65, 175),
              Colors.black
            ]
          )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 120),
          child:Column(
          children: [
            const Text('WHATEVER',style: TextStyle(color: Colors.white,fontSize: 30,fontFamily: 'CinzelDecorative',fontWeight: FontWeight.bold),),
            const Padding(padding: EdgeInsets.all(3)),
            const Text('make ur life more live',style: TextStyle(color: Colors.white,fontSize: 15,fontFamily: 'CinzelDecorative'),),
            const Padding(padding: EdgeInsets.all(10)),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                gradient: LinearGradient(
                  colors: [
                    Colors.purple,
                    Colors.blue
                  ]
                )
              ),
              child: TextButton(
              onPressed: (){
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: const Text('Get Started',style: TextStyle(color:Colors.white,fontFamily: 'CinzelDecorative',fontWeight: FontWeight.bold),),
            ),),
          ],
        ),),
      ),
    );
  }
}