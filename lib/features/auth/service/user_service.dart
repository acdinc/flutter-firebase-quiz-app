import 'package:firebase_services/firebase_services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/firebase/firestore_paths.dart';
import '../models/user/user_model.dart';

abstract class UserService {
  Stream<UserModel?> stream(String id);
  @visibleForTesting
  Future<UserModel?> read(String id);
  Future<void> create(UserModel model);
  Future<void> update(UserModel model);
  Future<void> delete(String id);
}

class UserServiceImpl extends UserService {
  UserServiceImpl({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  DocumentReference<UserModel> _documentRef(String id) =>
      _firestore.doc(FirestorePaths.userDoc(id)).withConverter<UserModel>(
            fromFirestore: (doc, _) => UserModel.fromJson(doc.data()!),
            toFirestore: (model, _) => model.toJson(),
          );

  @override
  Stream<UserModel?> stream(String id) {
    return _documentRef(id).snapshots().map((doc) => doc.data());
  }

  @override
  Future<UserModel?> read(String id) {
    return _documentRef(id).get().then((doc) => doc.data());
  }

  @override
  Future<void> create(UserModel model) {
    return _documentRef(model.id!).set(model);
  }

  @override
  Future<void> update(UserModel model) {
    return _documentRef(model.id!).set(model, SetOptions(merge: true));
  }

  @override
  Future<void> delete(String id) {
    return _documentRef(id).delete();
  }
}
