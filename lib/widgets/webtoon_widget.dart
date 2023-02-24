import 'package:flutter/material.dart';

class WebToon extends StatelessWidget {
  final String title, thumb, id;

  const WebToon({
    super.key,
    required this.title,
    required this.thumb,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('take me home');
      },
      child: Column(
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 3,
                offset: const Offset(10, 10),
                color: Colors.black.withOpacity(0.3),
              )
            ], borderRadius: BorderRadius.circular(30)),
            //height: 200,
            width: 250,
            child: Image.network(thumb),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
