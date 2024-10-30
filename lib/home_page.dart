import 'package:flutter/material.dart';
import 'package:tugas_menu/list_item.dart';
import 'package:tugas_menu/makanan.dart';
import 'package:tugas_menu/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: pageBgColor,
        appBar: AppBar(
          backgroundColor: headerBackColor,
          title: const Text("MAKAN MAKAN MAKAN", style: textHeader1),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: listMakanan.length,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) {
            return ListItem(makanan: listMakanan[index]);
          },
        ),
      ),
    );
  }
}
