import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  int sayac =0;
  Widget build(BuildContext context) {

    var d = AppLocalizations.of(context)!;

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(title: Text(d.burcAdi,style: TextStyle(fontSize: 44,fontFamily: "Agbalumo"),
      ),
          backgroundColor: Colors.blue.shade400,
          centerTitle: true,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(d.tarih,style: TextStyle(fontSize: 22,color: Colors.black,fontWeight: FontWeight.bold),
          ),
          Image.asset("resimler/balik.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(d.pozitif,style: TextStyle(fontSize: 30,color: Colors.blue.shade500),),
              Text(d.negatif ,style: TextStyle(fontSize: 30,color: Colors.blue.shade500),)
            ],
          ),
          Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("*${d.empati} \n *${d.kabullenici}  \n *${d.sabirli} ",style:TextStyle(fontSize: 18 ,color: Colors.black),),
                Text("*${d.alingan} \n *${d.disiplinsiz} \n *${d.kirilgan} ",style:TextStyle(fontSize: 18 ,color: Colors.black),),
              ],
            ),
          ),
          Text(d.gonderiSoru,style:TextStyle(fontSize: 18 ,color: Colors.black)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                  width:ekranGenisligi/4,
                child: TextButton(onPressed: (){
                  setState(() {
                    sayac = sayac + 1;
                  });
                }, child: Text(d.evet,style: TextStyle(fontSize: 22,color: Colors.blue.shade500),),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade100,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                  ),
                ),
              ),
              SizedBox(
                width:ekranGenisligi/4,
                child: TextButton(onPressed: (){
                  setState(() {
                   /* if(sayac > 0){
                    sayac = sayac - 1;}
                    else{sayac =0;} */
                    sayac = sayac - 1;
                  });
                }, child: Text(d.hayir,style: TextStyle(fontSize: 22,color: Colors.blue.shade500),),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade100,
                    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),),
              ),
              ),
            ],
          ),
          Text("${d.degerlendirmeSonuc} :  $sayac",style: TextStyle(fontSize: 22,color: Colors.black),),
        ],
      ),
    );
  }
}


