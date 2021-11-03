import 'package:flutter/material.dart';
import 'package:proje1_burc_rehberi/burd_detay.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listenelenBurc;
  const BurcItem({required this.listenelenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;

    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: ListTile(
          onTap: () {
            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => BurcDetay(secilenBurc: listenelenBurc)));
            Navigator.pushNamed(context, "/burcDetay",arguments: listenelenBurc);
          },
          leading: Image.asset(
            "assets/images/" + listenelenBurc.burcKucukResim,
            width: 64,
            height: 64,
          ),
          title: Text(
            listenelenBurc.burcAdi,
            style: myTextStyle.headline5,
          ),
          subtitle: Text(
            listenelenBurc.burcTarihi,
            style: myTextStyle.subtitle1,
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
