import 'package:firebase_auth/firebase_auth.dart';

abstract class IFirebaseAuthService {
  Stream<User?> streamUser();
  Future<User?> anonSignIn();
  Future<void> signOut();
}

class FirebaseAuthService implements IFirebaseAuthService {
  FirebaseAuthService({
    FirebaseAuth? auth,
  }) : _auth = auth ?? FirebaseAuth.instance;

  final FirebaseAuth _auth;

  @override
  Stream<User?> streamUser() => _auth.authStateChanges();

  @override
  // ignore: lines_longer_than_80_chars
  Future<User?> anonSignIn() => _auth.signInAnonymously().then((cred) => cred.user);

  @override
  Future<void> signOut() async => _auth.signOut();
}
