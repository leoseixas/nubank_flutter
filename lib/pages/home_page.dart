import 'package:flutter/material.dart';
import 'package:nubank_flutter/themes/colors.dart';
import 'package:nubank_flutter/widgets/account_info.dart';
import 'package:nubank_flutter/widgets/card_info.dart';
import 'package:nubank_flutter/widgets/custom_bottom_app_bar.dart';
import 'package:nubank_flutter/widgets/person_identification.dart';
import 'package:nubank_flutter/widgets/tabOption.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isExpanded = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColors,

      appBar: AppBar(
        title: PersonIdentification(),
        elevation: 0,
        bottom: CustomBottomAppBar(
          isExpanded: _isExpanded,
          onTap: (){
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          bottom: 20,
          top: 20
        ),
        child: Column(
          children: <Widget>[
            AccountInfo(
              isExpanded: _isExpanded
            ),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index){
                    return CardInfo();
                  }
              ),
            ),
            SizedBox(height: 20,),
            TabOption()
          ],
        ),
      ),
    );
  }
}