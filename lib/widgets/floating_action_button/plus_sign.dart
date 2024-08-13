import 'package:flutter/material.dart';
import 'package:quickthought/app_color.dart';
import 'package:quickthought/pages/create_event_page.dart';

class PlusSignWidget extends StatelessWidget {
  const PlusSignWidget({super.key});

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
                  foregroundColor: AppColors.primaryBackground,
                ),
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => const ShowModalBottomSheetPage(),
                    ),
                  );
                },
                child: const Text('Event'),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primaryAccent,
                  foregroundColor: AppColors.primaryBackground,
                ),
                onPressed: () {
                  // Implement Task button action here
                },
                child: const Text('Tasks'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ShowModalBottomSheetPage extends StatelessWidget {
  const ShowModalBottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (ctx) => const CreateEventPage(),
      ).then((_) {
        Navigator.of(context).pop();
      });
    });

    return Scaffold(
      backgroundColor: Colors.transparent,
    );
  }
}
