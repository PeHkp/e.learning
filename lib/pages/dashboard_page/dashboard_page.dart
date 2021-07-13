import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: .0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Image.asset('assets/images/logotipo.png'),
          ),
          leadingWidth: MediaQuery.of(context).size.width,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Icon(
                Icons.power_settings_new,
                color: Color(0xFFFF6680),
                size: 25,
              ),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).primaryColor,
        body: Container(
          margin: EdgeInsets.only(top: 100),
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Color(0xFFF0EDF5),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24), topRight: Radius.circular(24)),
              border: Border.all(width: 1, color: Color(0xFFF0EDF5))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Categorias',
                    style: GoogleFonts.rubik(
                        color: Color(0xFF3D3D4C),
                        fontSize: 20,
                        fontWeight: FontWeight.normal),
                  ),
                  Text(
                    '40 cursos',
                    style: GoogleFonts.rubik(
                        color: Color(0xFFA0A0B2),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(24),
                    width: 156,
                    height: 172,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        border: Border.all(width: 1, color: Colors.white)),
                    child: Text('asda'),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
