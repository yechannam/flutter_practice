import 'package:flutter/material.dart';

class Mycard extends StatelessWidget {
  final String name, num, code;
  final IconData icon;
  final bool isdark;

  const Mycard(
      {super.key,
      required this.name,
      required this.num,
      required this.code,
      required this.icon,
      required this.isdark});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
          color: isdark ? const Color.fromARGB(255, 40, 40, 40) : Colors.white,
          borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 25,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isdark ? Colors.white : Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Text(
                      num,
                      style: TextStyle(
                        color: isdark ? Colors.white : Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      '  $code',
                      style: TextStyle(
                        color: isdark ? Colors.white : Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2,
              child: Transform.translate(
                offset: const Offset(7, 14),
                child: Icon(
                  icon,
                  color: isdark ? Colors.white : Colors.black,
                  size: 98,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
