import 'package:flutter/material.dart';

extension StringExtension on String {
  String capitalizeFirstLetter() =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';
}

class SideMenu extends StatelessWidget {
  static List<String> countries = [
    'uganda',
    'rwanda',
    'kenya',
  ];
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 239.0,
      height: double.infinity,
      color: const Color(0xFF1F2A37),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/images/logo.png',
            height: 57.0,
            width: 200.0,
            filterQuality: FilterQuality.high,
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: countries.length,
              itemBuilder: (context, index) {
                return _Link(texTitle: countries[index]);
              }),
        )
      ]),
    );
  }
}

class _Link extends StatelessWidget {
  final String texTitle;
  const _Link({
    required this.texTitle,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
      width: 185.0,
      height: 50,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              colors: <Color>[Color(0xFF1E1E1E), Color(0xFF1F2A37)]),
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(255, 20, 20, 20),
                offset: Offset(1, 1),
                spreadRadius: 0.0,
                blurRadius: 4.0,
                blurStyle: BlurStyle.normal),
            BoxShadow(
                color: Color.fromARGB(255, 20, 20, 20),
                offset: Offset(-1, -1),
                spreadRadius: 0.0,
                blurRadius: 4.0,
                blurStyle: BlurStyle.normal),
          ]),
      child: Center(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Image.asset(
          'assets/images/flag.png',
          width: 30.0,
          height: 30.0,
        ),
        Expanded(
          child: Text(
            texTitle.capitalizeFirstLetter(),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
      ])),
    );
  }
}
