import 'package:e_learning_app/widgets/text_input_widget/text_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController userNameFieldController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 24.0),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Image.asset(
          'assets/images/logotipo.png',
          height: 25,
        ),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            Image.asset('assets/images/e.learning.png'),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Column(
                    children: [
                      Text(
                        'Digite o E-mail que esta cadastrado,\npara nos enviarmos um link para a troca da senha',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextInputWidget(
                        label: 'E-mail',
                        keyboardType: TextInputType.name,
                        onChanged: () => {},
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        controller: userNameFieldController,
                        icon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 303,
                            child: TextButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          side: BorderSide(
                                              color: Colors.transparent))),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.symmetric(
                                              vertical: 19, horizontal: 82)),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color(0xFFFF6680))),
                              onPressed: () => {Navigator.pop(context)},
                              child: Text(
                                'Enviar',
                                style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
