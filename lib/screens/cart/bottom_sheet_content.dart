import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Padding(
      padding: EdgeInsets.all(height * .02),
      child: Column(
        children: [
          Row(
            spacing: height * .01,
            children: [
              Expanded(child: TextFormField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                    borderSide: const BorderSide(
                      color: Colors.grey, // Default border color
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12), // Same rounded corners
                    borderSide: const BorderSide(
                      color: Colors.green, // Border color when focused
                      width: 2.0, // Thicker border when focused
                    ),
                  ),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.close), // Add your desired icon here
                    onPressed: () {
                      // Define the action for the button (e.g., clear text)
                    },
                  ),
                ),
              )),

              Text('Cancle', style: TextStyle(fontSize: width * .035),)
            ],
          )
        ],
      ),
    );
  }
}
