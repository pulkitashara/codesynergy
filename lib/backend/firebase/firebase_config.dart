import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBSYNRAjUkNJWbtDounaaJE75YxB67p-oc",
            authDomain: "codesynergy-01.firebaseapp.com",
            projectId: "codesynergy-01",
            storageBucket: "codesynergy-01.appspot.com",
            messagingSenderId: "700531764835",
            appId: "1:700531764835:web:5d19fc2f9329cf424b9256"));
  } else {
    await Firebase.initializeApp();
  }
}
