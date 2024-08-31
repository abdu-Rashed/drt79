import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAVzkg2YWgegrZtK7gxWVXQii_6fnfag5E",
            authDomain: "aqar-m7fnwf.firebaseapp.com",
            projectId: "aqar-m7fnwf",
            storageBucket: "aqar-m7fnwf.appspot.com",
            messagingSenderId: "678366076710",
            appId: "1:678366076710:web:8ba0d7c4ac27e40d20abe7"));
  } else {
    await Firebase.initializeApp();
  }
}
