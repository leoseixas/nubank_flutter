import 'package:flutter/material.dart';

class TabOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index){
          return Row(
            children: <Widget>[
              Container(
                width: 100,
                color: Color.fromRGBO(255, 255, 255, .2),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.person_add,
                      color: Colors.white,
                      size: 30,
                    ),
                    Spacer(),
                    Text(
                      'Indicar Amigos',
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: index == 9 ? 20 : 5,
              )
            ],
          );
        },
      ),
    );
  }
}
