import 'package:flutter/material.dart';
import 'package:toonflix/weiget/bt.dart';
import 'package:toonflix/weiget/card.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF181818),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text('Hello, yecnam',
                            style: TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w800,
                              color: Colors.white,
                            )),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.6),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                Text(
                  'Total Value',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  '\$1 192 129',
                  style: TextStyle(
                    fontSize: 45,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Button(
                        text: 'request',
                        bgcolor: Colors.amber,
                        txcolor: Colors.black),
                    Button(
                        text: 'request',
                        bgcolor: Color.fromARGB(255, 61, 61, 61),
                        txcolor: Colors.white)
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Text(
                      'Wallets',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'view all',
                      style: TextStyle(
                        color: Color.fromARGB(255, 203, 203, 203),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Mycard(
                    name: 'Euro',
                    num: '6 428',
                    code: 'EUR',
                    icon: Icons.euro_rounded,
                    isdark: true),
                Transform.translate(
                  offset: const Offset(0, -31),
                  child: const Mycard(
                    name: 'won',
                    num: '1 293',
                    code: 'WON',
                    icon: Icons.money,
                    isdark: false,
                  ),
                ),
                Transform.translate(
                  offset: const Offset(0, -62),
                  child: const Mycard(
                    name: 'Bitcoin',
                    num: '0 125',
                    code: 'BIT',
                    icon: Icons.currency_bitcoin,
                    isdark: true,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
