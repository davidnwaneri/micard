import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatefulWidget {
  const MainPage({required this.title, super.key});

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 3,
              child: ClipPath(
                clipper: const ShapeBorderClipper(shape: CircleBorder()),
                child: Image.asset('assets/images/dashatar.jpg'),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'David Nwaneri',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 40.0, fontFamily: GoogleFonts.pacifico().fontFamily),
            ),
            Text(
              'SOFTWARE ENGINEER',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontFamily: GoogleFonts.sourceSans3().fontFamily,
                color: Colors.blueGrey[400],
                letterSpacing: 2.5,
              ),
            ),
            const SizedBox(height: 25, child: Divider(color: Colors.white, indent: 10, endIndent: 10)),
            const _InfoTile(icon: Icons.phone, info: '+234 xxx xxx xxxx'),
            const _InfoTile(icon: Icons.mail, info: 'davidn4333@gmail.com'),
          ],
        ),
      ),
    );
  }
}

class _InfoTile extends StatelessWidget {
  const _InfoTile({required this.icon, required this.info});

  final IconData icon;
  final String info;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueGrey[900]),
        title: Text(info, style: TextStyle(fontSize: 20.0, color: Colors.blueGrey[600])),
      ),
    );
  }
}
