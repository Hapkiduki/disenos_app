import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderBordesRedondeados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 2;

    final path = new Path();

    //Dibujar con el path y el lapiz
    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * .30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderTriangular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    //Dibujar con el path y el lapiz
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderPico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    //Dibujar con el path y el lapiz
    path.lineTo(0, size.height * .20);
    path.lineTo(size.width * .5, size.height * .30);
    path.lineTo(size.width, size.height * .20);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderCurvo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    //Dibujar con el path y el lapiz
    path.lineTo(0, size.height * .20);
    path.quadraticBezierTo(
        size.width * .5, size.height * .35, size.width * .5, size.height * .20);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class HeaderWave extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderWavePainter(),
      ),
    );
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final lapiz = Paint();

    //Propiedades
    lapiz.color = Color(0xff615AAB);
    lapiz.style = PaintingStyle.fill;
    lapiz.strokeWidth = 20;

    final path = new Path();

    //Dibujar con el path y el lapiz
    path.lineTo(0, size.height * .25);
    path.quadraticBezierTo(size.width * .30, size.height * .30, size.width * .5,
        size.height * .25);
    path.quadraticBezierTo(
        size.width * .75, size.height * .20, size.width, size.height * .25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, lapiz);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}





// Este es un header adicional totalmente independiente
class IconHeader extends StatelessWidget {

  final IconData icon;
  final String titulo;
  final String subTitulo;
  final Color color1;
  final Color color2;

  IconHeader({
    @required this.icon,
    @required this.titulo, 
    @required this.subTitulo, 
    this.color1 = Colors.blue,  
    this.color2 = Colors.blueGrey,
  });

  @override
  Widget build(BuildContext context) {
    final Color colorBlanco = Colors.white.withOpacity(.7);

    return Stack(
      children: <Widget>[
        _IconHeaderBackground( color1: this.color1, color2: this.color2),
        Positioned(
          top: -50,
          left: -70,
          child: FaIcon(
            this.icon,
            size: 250,
            color: Colors.white.withOpacity(.2),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 80,
              width: double.infinity,
            ),
            Text(
              this.titulo,  
              style: TextStyle(fontSize: 20, color: colorBlanco),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              this.subTitulo,
              style: TextStyle(
                  fontSize: 25,
                  color: colorBlanco,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            FaIcon(
              this.icon,
              size: 80,
              color: Colors.white,
            ),
          ],
        )
      ],
    );
  }
}

class _IconHeaderBackground extends StatelessWidget {

  final Color color1;
  final Color color2;

  const _IconHeaderBackground({
    @required this.color1,
    @required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80)),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            this.color1,
            this.color2,
          ],
        ),
      ),
    );
  }
}
