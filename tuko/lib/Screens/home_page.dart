import 'package:flutter/material.dart';
import 'package:tuko/Screens/numbers_page.dart';
import '../Components/category_item.dart';
import 'numbers_page.dart';


class Home_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:const Text(
            'tuko',
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Chela One',
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        body: Container(
          color: Colors.grey,
          child: Column(
            children: [
              Category(
                  name: "Numbers",
                  color: Colors.orange,
                  onTap: (){
                    Navigator.push(
                      context ,
                      MaterialPageRoute(builder: (context){
                        return Numbers();
                      })
                    );
                  }
              ),
              Category(
                name: "Family Members",
                color: Colors.green),
              Category(
                name: "Colors",
                color: Colors.deepPurple
              ),
              Category(
                name: "Phrases",
                color: Colors.blue)
            ],
          ),
        )
    );
  }
}