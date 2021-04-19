import 'package:flutter/material.dart';
import 'package:kurs_2021_app/screens/hueseyin_s_screen.dart';
import 'package:kurs_2021_app/screens/jan_torsten_m_screen.dart';
import 'package:kurs_2021_app/screens/unbekannt_screen.dart';

class KursScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kursteilnehmer"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          zeileKursteilnehmer("Prof Dr. habil. Jan-Torsten Milde", context,
              JanTorstenMScreen()),
          zeileKursteilnehmer("Unbekannt", context, UnbekanntScreen()),
          zeileKursteilnehmer("Hüseyin", context, hueseyin_s_screen()),
        ],
      ),
    );
  }

  Widget zeileKursteilnehmer(String text, BuildContext context, Widget screen) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print("ouch");
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => screen));
        },
        child: Container(
          //width: 200,
          color: Colors.green,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
