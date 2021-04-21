import 'package:flutter/material.dart';
import 'package:kurs_2021_app/screens/asmir_hodzic_screen.dart';
import 'package:kurs_2021_app/screens/hueseyin_s_screen.dart';
import 'package:kurs_2021_app/screens/jan_torsten_m_screen.dart';
import 'package:kurs_2021_app/screens/jason_s_screen.dart';
import 'package:kurs_2021_app/screens/kerstin_g_screen.dart';
import 'package:kurs_2021_app/screens/maximilian_r_screen.dart';
import 'package:kurs_2021_app/screens/michael_h_screen.dart';
import 'package:kurs_2021_app/screens/nic_s_screen.dart';
import 'package:kurs_2021_app/screens/pascal_w_screen.dart';
import 'package:kurs_2021_app/screens/sebastian_h_screen.dart';
import 'package:kurs_2021_app/screens/till_h_screen.dart';
import 'package:kurs_2021_app/screens/uebung2_unbekannt_screen.dart';
import 'package:kurs_2021_app/screens/unbekannt_screen.dart';
import 'Maximilian_D.dart';


class KursScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kursteilnehmer"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            zeileKursteilnehmer("Prof Dr. habil. Jan-Torsten Milde", context,
                JanTorstenMScreen()),
            zeileKursteilnehmer("Unbekannt", context, UnbekanntScreen()),
            zeileKursteilnehmer("Unbekannt2", context, Uebung2UnbekanntScreen()),
            zeileKursteilnehmer("Hüseyin", context, HueseyinSScreen()),
            zeileKursteilnehmer("Till Henkel", context, TillHScreen()),
            zeileKursteilnehmer("Asmir Hodzic", context, AsmirHScreen()),
            zeileKursteilnehmer("Nic Schittenhelm", context, NicSScreen()),
            zeileKursteilnehmer("Michael Halbleib", context, MichaelHalbleibScreen()),
            zeileKursteilnehmer("Pascal Witzel", context, PascalWScreen()),
            zeileKursteilnehmer("Sebastian Heil", context, SebastianHScreen()),
            zeileKursteilnehmer("Jason Stolze", context, JasonSScreen()),
            zeileKursteilnehmer("Maximlian R", context, MaximilianRScreen()),
            zeileKursteilnehmer("Kerstin Geis", context, KerstinGScreen()),
            zeileKursteilnehmer("Maximilian Desch", context, MaximilianDScreen()),
          ]
        ),
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
          color: Colors.blue,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
