import 'package:flutter/material.dart';

class PersonIdentification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          'assets/logo_nubank.png',
          width: 50,
          color: Colors.white,
        ),

        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
              'Leo',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}