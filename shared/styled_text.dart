import 'package:flutter/material.dart';

class StyledEventTitle extends StatelessWidget {
  const StyledEventTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: const TextStyle(
      fontFamily: 'SF Pro Text',
      fontSize: 12,
    ),
      softWrap: true,
      overflow: TextOverflow.fade,
    );
  }
}

// class StyledHeading extends StatelessWidget {
//   const StyledHeading(this.text, {super.key});

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(text.toUpperCase(), style: GoogleFonts.kanit(
//       textStyle: Theme.of(context).textTheme.headlineMedium
//     ));
//   }
// }

// class StyledTitle extends StatelessWidget {
//   const StyledTitle(this.text, {super.key});

//   final String text;

//   @override
//   Widget build(BuildContext context) {
//     return Text(text.toUpperCase(), style: GoogleFonts.kanit(
//       textStyle: Theme.of(context).textTheme.titleMedium
//     ));
//   }
// }