import 'package:flutter/material.dart';
import 'gridview.dart';

void main(){
  runApp(actvitywidget());
}
class actvitywidget extends StatelessWidget{
  GlobalKey<ScaffoldState> scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "actvitywidget",

      home: Scaffold(
        key: scaffoldkey,
        body:
        Column(

            children: [

              //  ListTile

              ListTile(
                title: Text("listtile"),
                leading: Icon(Icons.mobile_friendly_outlined),
                onTap: (){
                  print("ontap");
                },
                onLongPress: (){
                  print("onLongPress");
                },
                tileColor: Color.fromARGB(255, 225, 244, 54),
              ),


              //CircleAvatar

              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 60,
                child: Text('CircleAvatar'),
              ) ,


              //  ElevatedButton

              Center( child:   ElevatedButton(style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  padding:
                  MaterialStateProperty.all(const EdgeInsets.all(20)),
                  textStyle: MaterialStateProperty.all(
                      const TextStyle(fontSize: 14, color: Colors.white))),
                onPressed: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context) =>GridVieww())),
                // print("raisedbutton");
                //onPressed:null,
                child: Text("ElevatedButton"),
              ),),


              // snackbar

              Center(
                child: ElevatedButton(
                    onPressed: () {
                      var snackbar=SnackBar(
                          behavior: SnackBarBehavior.floating,
                          content: Text("how are you"),
                          duration:Duration(seconds:1),
                          backgroundColor: Colors.red,
                          padding:EdgeInsets.all(10),
                          margin:EdgeInsets.all(10));

                    },
                    child:Text("SnackBar") ),
              ),
            ]),

      ),);


  }
}








