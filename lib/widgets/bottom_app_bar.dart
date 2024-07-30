import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 5,
      child: BottomAppBar(
        // color: AppColors.primaryEventTitle,
        // shape: CircularNotchedRectangle(),
        // child: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     IconButton(
        //       onPressed: () {},
        //       icon: Icon(Icons.home, color: Colors.black,)
        //     ),
        //     IconButton(
        //       onPressed: () {},
        //       icon: Icon(Icons.settings, color: Colors.black,)
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
