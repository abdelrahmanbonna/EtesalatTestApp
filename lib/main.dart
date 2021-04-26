import 'package:etisalat_app/customSlider.dart';
import 'package:etisalat_app/widgets/sliderCard.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Etisalat Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Etisalat Demo'),
      ),
      body: SafeArea(
        child: Center(
          child: CustomSlider(
            mediaQuery: MediaQuery.of(context),
            height: 0.3,
            list: [
              SliderCard(
                title: 'Home',
                icon: Icons.home,
                color: Colors.green,
                iconColor: Colors.white,
                textColor: Colors.white,
                width: 0.5,
              ),
              SliderCard(
                title: 'Environment',
                icon: Icons.eco,
                color: Colors.amber,
                iconColor: Colors.white,
                textColor: Colors.white,
                width: 0.5,
              ),
              SliderCard(
                title: 'Exit',
                icon: Icons.dangerous,
                color: Colors.blue,
                iconColor: Colors.white,
                textColor: Colors.white,
                width: 0.5,
              ),
              SliderCard(
                title: 'Password',
                icon: Icons.seven_k_plus,
                color: Colors.red,
                iconColor: Colors.white,
                textColor: Colors.white,
                width: 0.5,
              ),
              SliderCard(
                title: 'Share',
                icon: Icons.qr_code,
                color: Colors.yellow,
                textColor: Colors.black,
                iconColor: Colors.black,
                width: 0.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
