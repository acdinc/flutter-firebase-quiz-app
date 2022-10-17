import 'package:firebase_services/firebase_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// firebase providers

final firestoreProvider = Provider<FirebaseFirestore>((_) {
  return FirebaseFirestore.instance;
});

final firebaseAuthProvider = Provider<FirebaseAuth>((_) {
  return FirebaseAuth.instance;
});

final firebaseAuthServiceProvider = Provider<IFirebaseAuthService>((ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);

  return FirebaseAuthService(auth: firebaseAuth);
});
