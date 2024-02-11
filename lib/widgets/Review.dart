import 'package:flutter/material.dart';

class ReviewSection extends StatelessWidget {
  num ratingValue;

  ReviewSection({
    Key? key,
    required this.ratingValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,

      children: [
        // Rating Icon
        Icon(
          Icons.star,
          color: Colors.orange.shade400,
          size: 20,
        ),

        // Rating Value
        const SizedBox(width: 5),
        Text(
          "$ratingValue",
          style: const TextStyle( fontSize: 14, fontWeight: FontWeight.bold ),
        ),

        // Reviews
        const SizedBox( width: 6 ),
        const Text(
          "(300 Reviews)",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],

    );

  }
}
