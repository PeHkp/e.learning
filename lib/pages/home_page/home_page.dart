import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Image.asset('assets/images/e.learning.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/cellphone.png'),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'Aprenda da\nmelhor forma',
                    style: GoogleFonts.rubik(
                        color: Color(0xFFFF6680), fontSize: 36),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Entre na plataforma e\nacesse cursos de diversas áreas\nde conhecimento.',
                    style:
                        GoogleFonts.roboto(color: Colors.white, fontSize: 15),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                    side:
                                        BorderSide(color: Colors.transparent))),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                EdgeInsets.symmetric(
                                    vertical: 19, horizontal: 82)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color(0xFFFF6680))),
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/login')},
                        child: Text(
                          'Começar os estudos',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () =>
                            {Navigator.pushNamed(context, '/register')},
                        child: Text(
                          'Cadastre-se',
                          style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
