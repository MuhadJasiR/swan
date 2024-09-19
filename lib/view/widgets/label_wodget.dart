import 'package:flutter/material.dart';

class LabelWidget extends StatelessWidget {
  const LabelWidget({super.key, required this.title});

  final title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          TextButton(
              onPressed: () {},
              child: const Text(
                "View All",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                ),
              )),
        ],
      ),
    );
  }
}
