import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCPp4Ifkb1YZGSGcHEAu8hrU50tRaUVzYY",
            authDomain: "app1-030517.firebaseapp.com",
            projectId: "app1-030517",
            storageBucket: "app1-030517.appspot.com",
            messagingSenderId: "350762563845",
            appId: "1:350762563845:web:f83b1485b13e928efcdf6c",
            measurementId: "G-KQSR7F9FZT"));
  } else {
    await Firebase.initializeApp();
  }
}
