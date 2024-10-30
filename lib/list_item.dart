import 'package:flutter/material.dart';
import 'package:tugas_menu/detail_page.dart';
import 'package:tugas_menu/makanan.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;

  const ListItem({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(makanan: makanan),
          ),
        );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // widget untuk menampilkan gambar lokal
          Image.asset(
            makanan.gambar,
            height: 75,
            width: 75,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                makanan.nama,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                makanan.deskripsi,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
