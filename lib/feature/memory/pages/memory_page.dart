import 'package:asset_cache/asset_cache.dart';
import 'package:christmas/feature/memory/memory_enum.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui' as ui;

class MemoryPage extends StatelessWidget {
  const MemoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          final value = MemoryEnum.values[index];
          return item(context,
              title: value.title, listA: value.listA, listB: value.listB);
        },
        itemCount: MemoryEnum.values.length,
        shrinkWrap: true,
      ),
    );
  }

  Widget item(
    BuildContext context, {
    required String title,
    required List<String> listA,
    required List<String> listB,
  }) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        width: size.width,
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, bottom: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: GoogleFonts.roboto(
                      letterSpacing: 1,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 81, 8, 8),
                      fontSize: 30),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => image(listA[index]),
                itemCount: listA.length,
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) => image(listB[index]),
                itemCount: listB.length,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget image(String image) {
    List<String> pathParts = image.split('/');
    String fileName = pathParts.last;
    String directoryPath = image.substring(0, image.length - fileName.length);
    return Container(
      width: 250,
      height: 200,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.red,
          boxShadow: [
            BoxShadow(
                blurRadius: 5,
                offset: Offset(0, -1),
                spreadRadius: 2,
                color: Colors.black.withOpacity(0.3))
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: FutureBuilder<ui.Image>(
          future: ImageAssetCache(basePath: directoryPath).load(fileName),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return RawImage(
                image: snapshot.data,
                fit: BoxFit.scaleDown,
              );
            } else {
              return const Text('loading..');
            }
          },
        ),
      ),
    );
  }
}
