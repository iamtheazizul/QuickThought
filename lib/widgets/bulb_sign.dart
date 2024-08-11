import 'package:flutter/material.dart';
import 'package:quickthought/app_color.dart';
import 'package:quickthought/extension.dart';
import 'package:quickthought/pages/create_event_page.dart';
import 'package:quickthought/widgets/add_event_form.dart';

class BulbSignWidget extends StatelessWidget {
  const BulbSignWidget({super.key});

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
        
                },
                child: Text('New Suggestion'),
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
                child: Text('Personalized Suggestion'),
              ),
        
            ),

          ],
        ),
      ),
    );
  }
}
