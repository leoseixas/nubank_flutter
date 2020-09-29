import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2,
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Card(
          margin: EdgeInsets.only(right: 20),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: mainBlock()
              ),
              otherBlock()
            ],
          ),
        ),
      ),
    );
  }

  Widget mainBlock(){
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(
                Icons.credit_card,
                size: 30,

              ),
              SizedBox(width: 15),
              Text(
                'Cartao de Credito',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500]
                ),
              )
            ],
          ),
          Spacer(),
          Text(
            'FATURA ATUAL',
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue[400],
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 5,),
          Text(
            'R\$ 1.546,25',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 28,
              color: Colors.blue[400],
            ),
          ),
          SizedBox(height: 5,),
          Text.rich(
            TextSpan(
                text: 'Limite Disponível ',
                children: [
                  TextSpan(
                      text: '4.542,22',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.green[400]
                      )
                  )
                ]
            ),
          ),
          Spacer()
        ],
      ),
    );
  }

  Widget otherBlock(){
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(30),
      child: Row(
        children: <Widget>[
          Icon(
            Icons.home,
            size: 40,
          ),
          SizedBox(width: 15,),
          Expanded(
            child: Text(
              'Compra mais recente em Estabeleciamento XPTO em Novo Hamburgo',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700]
              ),
            ),
          ),
          Icon(
              Icons.keyboard_arrow_right
          )
        ],
      ),
    );
  }
}
