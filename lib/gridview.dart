import 'package:flutter/material.dart';


class GridVieww extends StatelessWidget{
  @override
  Widget build(Object context) {
    return Scaffold(


      body: Container(
        child: GridView(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
            mainAxisSpacing: 20,crossAxisSpacing:20),
          children: [

            Container(child: Text("contner1"),
                height: 20,
                color: Colors.red),

            Container(child: Text("contner1"),
                height: 20,
                color: Colors.green),

            Container(child: Text("contner1"),
                height: 20,
                color: Colors.blue),


            Container(child: Text("contner1"),
                height: 20,
                color: Colors.yellow),

          ],
        ),),);
  }

}