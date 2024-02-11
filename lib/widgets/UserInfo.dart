// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class UserInfoSection extends StatelessWidget {
  String image;
  String name;
  String location;

  UserInfoSection({
    Key? key,
    required this.image,
    required this.name,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(image, fit: BoxFit.cover),
            const SizedBox(width: 10),

            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
                ),

                Row(
                  children: [
                    Image.asset("../assets/images/Location.png"),

                    const SizedBox(width: 5),
                    Text(
                      location,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),

              ],
            ),

          ]
        ),

        ElevatedButton(
          onPressed: () => {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(11)
            ),
          ),
          child: const Text('Follow')
        ),

      ],
    );
  }
}
