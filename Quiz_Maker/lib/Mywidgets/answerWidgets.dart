import 'package:flutter/material.dart';
import'package:google_fonts/google_fonts.dart';
class AnswerButton extends StatelessWidget {
  const AnswerButton(this.text, this.ontap, {super.key});
  final String text;
  final void Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: ontap,
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(15),
              backgroundColor: Colors.amber,
              alignment:Alignment.center,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              )),
          child: Text(
            text,
            textAlign:TextAlign.center,
            style:GoogleFonts.lato(fontSize:20,fontWeight:FontWeight.bold ),
          )),
    );
  }
}
