import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  ItemListWidget({super.key});

  List<String> images = [
    'assets/images/hard-beans.jpg',
    'assets/images/arcaffe-roma.jpg',
    'assets/images/caffenation_funky.jpg',
    'assets/images/lavazza-rossa.jpg',
  ];

  List<String> itemNames = [
    'Hard Beans Brasil Espresso',
    'Arcaffe Roma 1kg',
    'Caffenation Funky STUFF Co..',
    'Lavazza Rossa Qualita 1kg'
  ];

  List<String> itemDescription = [
    'An  elegant classic of heighest quality.',
    'In 1926 the brothers Meschini were aske',
    'Levendar/Pot pourri',
    'Lavazza Qualita Rossa coffee beans are..'
  ];

  List<String> price = [
    '8.00',
    '18.00',
    '19.00',
    '11.00'
  ];

  List<int> amount = [
    30, 50, 35, 40
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Container(
      height: height * .7,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Color(0xffebebed),
        borderRadius: BorderRadius.circular(height * .02),
        border: Border.all(color: Colors.grey)
      ),
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) => Container(
            margin: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12.0),
              // Product Image
              leading: Container(
                padding: EdgeInsets.all(height *.01),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(color: Colors.grey)
                ),
                child: Image.asset(
                  images[index], // Replace with your image URL
                  width: height * .1,
                  height: height * .3,
                  fit: BoxFit.cover,
                ),
              ),
              // Title and Subtitle
              title: Text(
                itemNames[index],
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4.0),
                  Text(
                    itemDescription[index],
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Colors.grey,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    '\$' + price[index],
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Decrease Button
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(.2),
                              border: Border.all(color: Colors.grey.shade400),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.remove, color: Colors.black),
                              onPressed: () {
                                // Add functionality for middle button here
                              },
                            ),
                          ),
                          // Quantity
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: height * .03, vertical: height * .01),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey.shade300),
                              borderRadius: BorderRadius.circular(height * .02),
                            ),
                            child: Text(
                              amount[index].toString(),
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          // Increase Button
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey.withOpacity(.2),
                              border: Border.all(color: Colors.grey.shade400),
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.add, color: Colors.black),
                              onPressed: () {
                                // Add functionality for middle button here
                              },
                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade400),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.close, color: Colors.red),
                          onPressed: () {
                            // Add functionality for middle button here
                          },
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}


