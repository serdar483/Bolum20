import 'package:flutter/material.dart';
import 'package:proje1_burc_rehberi/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({required this.secilenBurc, Key? key}) : super(key: key);

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.pink;
  late PaletteGenerator _generator;

  // burası bir kere çalışıyor
  @override
  void initState() {
    super.initState();
    //appBarRenginiBul();
    WidgetsBinding.instance!.addPostFrameCallback((_) => appBarRenginiBul());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          expandedHeight: 300,
          pinned: true,
          floating: true,
          backgroundColor: appbarRengi,
          flexibleSpace: FlexibleSpaceBar(
            centerTitle: true,
            title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
            background: Image.asset(
              "assets/images/" + widget.secilenBurc.burcBuyukResim,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(8),
            child: SingleChildScrollView(
              child: Text(
                widget.secilenBurc.burcDetayi,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  void appBarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage("assets/images/" + widget.secilenBurc.burcBuyukResim));
    setState(() {
      appbarRengi = _generator.dominantColor!.color;
    });
  }
}
