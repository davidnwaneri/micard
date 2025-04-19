import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:micard/app/app.dart';

void main() {
  GoogleFonts.config.allowRuntimeFetching = false;
  _addFontsLicense();
  runApp(const MiCardApp());
}

void _addFontsLicense() {
  LicenseRegistry.addLicense(() async* {
    final pacificoLicense = await rootBundle.loadString('assets/fonts/Pacifico/OFL.txt');
    final sourceSansLicense = await rootBundle.loadString('assets/fonts/Source_Sans_3/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], pacificoLicense);
    yield LicenseEntryWithLineBreaks(['google_fonts'], sourceSansLicense);
  });
}
