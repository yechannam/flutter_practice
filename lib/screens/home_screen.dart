import 'package:flutter/material.dart';
import 'package:toonflix/model/model.dart';
import 'package:toonflix/services/api_service.dart';

import '../widgets/webtoon_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  Future<List<Webtoon>> webtoons = ApiService.getTodays();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        foregroundColor: Colors.green,
        title: const Text(
          '오늘의 웹툰',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: FutureBuilder(
        future: webtoons,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var webtoon = snapshot.data![index];
                      return WebToon(
                        title: webtoon.title,
                        thumb: webtoon.thumb,
                        id: webtoon.id,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(
                      width: 40,
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
