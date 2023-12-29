import 'package:flutter/material.dart';
import 'app_colors.dart'; // Importa tu archivo de colores
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blog Preview Card",
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.primaryYellow,
      ),
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({super.key});

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Blog Preview Card"),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: AppColors.neutralWhite,
              borderRadius: BorderRadius.circular(15.0),
              boxShadow: [
                BoxShadow(
                  color: AppColors.neutralBlack.withOpacity(1),
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: Offset(10,
                      10), // Cambia la posición de la sombra según tu preferencia
                ),
              ],
              border: Border.all(
                color: AppColors.neutralBlack, // Color del borde
                width: 2.0, // Ancho del borde
              ),
            ),
            height: 510.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: SvgPicture.asset(
                    'assets/images/illustration-article.svg',
                    semanticsLabel: 'My SVG Image',
                    height: 200,
                    width: 150,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(
                      left: 0, right: 10, bottom: 10), // Ajusta el padding
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: AppColors
                              .primaryYellow, // Color del fondo del texto
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text(
                          'Learning',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: AppColors.neutralBlack,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Published 21 Dec 2023',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.neutralBlack,
                        ),
                      ),
                      SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'HTML & CSS foundations',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: isHovered
                                  ? AppColors.primaryYellow
                                  : AppColors.neutralBlack,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'These languages are the backbone of every website, defining structure, content, and presentation.',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColors.neutralGrey,
                            ),
                          ),
                          SizedBox(height: 30),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/image-avatar.png', // Ruta de la imagen en tu proyecto
                                width: 30, // Ancho de la imagen
                                height: 30, // Altura de la imagen
                                fit: BoxFit
                                    .contain, // Ajuste de la imagen dentro del contenedor
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Greg Hooper',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.neutralBlack,
                                ),
                              ),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
