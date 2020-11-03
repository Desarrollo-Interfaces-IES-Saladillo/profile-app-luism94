import 'package:flutter/material.dart';

void main() {
  runApp(MyProfile());
}

class MyProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: Scaffold(
    //     backgroundColor: Colors.teal,
    //     body: SafeArea(
    //       child: Column(
    //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //         children: [
    //           CircleAvatar(
    //             backgroundColor: Colors.red,
    //             radius: 50.0,
    //             backgroundImage: AssetImage('assets/images/obiwan.png'),
    //           ),
    //           Text(
    //             'Obi-Wan Kenobi',
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 24.0,
    //               fontFamily: 'PressStart2P',
    //             ),
    //           ),
    //           Text(
    //             'Jedi master',
    //             style: TextStyle(
    //               fontSize: 18.0,
    //               fontFamily: 'Roboto',
    //               letterSpacing: 2.5,
    //             ),
    //           ),
    //           Container(
    //             margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
    //             padding: EdgeInsets.only(left: 10.0, right: 10.0),
    //             height: 30.0,
    //             color: Colors.white,
    //             child: Row(
    //               children: [
    //                 Icon(
    //                   Icons.mail_outline_outlined,
    //                   size: 20.0,
    //                 ),
    //                 SizedBox(
    //                   width: 10.0,
    //                 ),
    //                 Text(
    //                   'obi_wan@iessaladillo.es',
    //                   style: TextStyle(
    //                     fontFamily: 'Roboto',
    //                     fontSize: 15.0,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            children: [
              //Coloco los elementos principales (foto, nombre y titulo) en un contenedor Center() para alterar su altura
              Center(
                widthFactor: double.maxFinite,
                heightFactor: 1.8,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50.0,
                  backgroundImage: AssetImage('assets/images/obiwan.png'),
                ),
              ),
              Center(
                widthFactor: double.maxFinite,
                heightFactor: 1.5,
                child: Text(
                  'Obi-Wan Kenobi',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontFamily: 'PressStart2P',
                  ),
                ),
              ),
              Center(
                widthFactor: double.maxFinite,
                heightFactor: 1.5,
                child: Text(
                  'Jedi master',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Roboto',
                    letterSpacing: 2.5,
                  ),
                )
              ),
              //El elemento carta se dimensiona automaticamente por su contenido
              Card(
                //Admite margenes
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                //Widget ListTile que contiene de forma opcional un leading (icono), un titulo (texto) y un subtitulo (texto)
                child: ListTile(
                  leading: Icon(
                    Icons.mail_outline_outlined, size: 20.0,
                  ),
                  title: Text(
                    "obi_wan@iessaladillo.es",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                    ),
                  ),
                )
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone_android_outlined, size: 20.0,
                  ),
                  title: Text(
                    "+34 123456789",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
