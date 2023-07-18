import 'package:flutter/material.dart';
import 'package:tuko/Components/number_item.dart';
import '../Models/number_model.dart';

class Numbers extends StatelessWidget{

  List<Number> numbers = const[
    Number(
      image: 'assets/images/numbers/number_one.png',
      jpName: 'one',
      enName: 'ichi',
    ),
    Number(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'two',
      enName: 'ni',
    ),
    Number(
      image: 'assets/images/numbers/number_three.png',
      jpName: 'three',
      enName: 'san',
    ),
    Number(
      image: 'assets/images/numbers/number_four.png',
      jpName: 'four',
      enName: 'shi',
    ),
    Number(
      image: 'assets/images/numbers/number_five.png',
      jpName: 'five',
      enName: 'go',
    ),
    Number(
      image: 'assets/images/numbers/number_six.png',
      jpName: 'six',
      enName: 'roku',
    ),
    Number(
      image: 'assets/images/numbers/number_seven.png',
      jpName: 'seven',
      enName: 'shichi',
    ),
    Number(
      image: 'assets/images/numbers/number_eight.png',
      jpName: 'eight',
      enName: 'hachi',
    ),
    Number(
      image: 'assets/images/numbers/number_nine.png',
      jpName: 'nine',
      enName: 'kyuu',
    ),
    Number(
      image: 'assets/images/numbers/number_ten.png',
      jpName: 'ten',
      enName: 'juu',
    ),
  ];

  Numbers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title:const Text(
          'Numbers',
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Alkatra'
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index){
         return Container_number(number: numbers[index]);
        }
      ),
    );
  }

  // this function with ListView act like ListView.builder
  List<Widget> getList(List<Number> numbers){
    List<Widget> listNumbers = [];
    for(int i = 0; i < numbers.length; i++) {
      listNumbers.add(Container_number(number: numbers[i]));
    }
    return listNumbers;
  }
}


