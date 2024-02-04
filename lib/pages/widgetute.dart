import 'package:flutter/material.dart';
import 'package:flutter_tute/pages/userpage.dart';
// import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

class widgetute extends StatelessWidget {
  List picscontents = [
    const Picdetails(
        picsname: "visalogo",
        picname2: "bank card logo",
        urlname: "assets/visalogo.png",
        colorname: Colors.purple),
    const Picdetails(
        picsname: "visalogo",
        picname2: "bank card logo",
        urlname: "assets/visalogo.png",
        colorname: Colors.blueGrey),
    const Picdetails(
        picsname: "visalogo",
        picname2: "bank card logo",
        urlname: "assets/visalogo.png",
        colorname: Colors.orange),
    const Picdetails(
        picsname: "chips logo",
        picname2: "chips",
        urlname: "assets/chiplogo.png",
        colorname: Colors.blue)
  ];
  widgetute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: picscontents.length,
        itemBuilder: (context, index) {
          final Picdetails = picscontents[index];
          return Card(
            child: ListTile(
              title: Text(Picdetails.picsname),
              subtitle: Text(Picdetails.picname2),
              trailing: const Icon(Icons.forward),
              leading: CircleAvatar(
                child: Image.asset(Picdetails.urlname),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => userpage(Picdetails: Picdetails),
                    ));
              },
            ),
          );
        },
      ),
    );
  }
}

class Picdetails {
  final String? picsname;
  final String? picname2;
  final String? urlname;
  final Color? colorname;

  const Picdetails(
      {required this.picsname,
      required this.picname2,
      required this.urlname,
      required this.colorname});
}
