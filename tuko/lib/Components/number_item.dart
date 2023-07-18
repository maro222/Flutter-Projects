import 'package:flutter/material.dart';
import '../Models/number_model.dart';

class Container_number extends StatelessWidget {

  const Container_number({required this.number});
  final Number number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      height: 100,
      child: Row(
        children:[
          Container(
              child: Image.asset(number.image),
              color: Colors.orange
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.enName,
                  style: TextStyle(
                    fontSize: 25,
                    fontFamily: 'Alkatra',
                  ),
                ),
                Text(
                  number.jpName,
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Alkatra'
                  ),
                ),
              ],
            ),
          ),
          Spacer(flex : 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}