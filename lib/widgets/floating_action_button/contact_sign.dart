import 'package:flutter/material.dart';
import 'package:quickthought/app_color.dart';

class ContactSignWidget extends StatelessWidget {
  const ContactSignWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryAccent,
                  foregroundColor: AppColors.primaryBackground
                ),
                onPressed: () {
                          // context.pushRoute(CreateEventPage());
        
                },
                child: Text('Request'),
              ),
        
            ),

            SizedBox(width: 20,),
        
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryAccent,
                  foregroundColor: AppColors.primaryBackground
                ),
                onPressed: () {
                },
                child: Text('Show Availability'),
              ),
        
            ),

          ],
        ),
      ),
    );
  }
}
