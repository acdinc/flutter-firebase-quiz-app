import 'package:firebase_services/firebase_services.dart';
import 'package:flutter/cupertino.dart';

import '../../../core/firebase/firestore_paths.dart';
import '../models/quiz/quiz_model.dart';

abstract class QuizService {
  @visibleForTesting
  Future<void> create(Map<String, dynamic> data);
  Future<QuizModel?> readOne(String id);
}

class QuizServiceImpl extends QuizService {
  QuizServiceImpl(FirebaseFirestore firestore) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  DocumentReference<QuizModel> _documentRef(String id) =>
      _firestore.doc(FirestorePaths.quizDoc(id)).withConverter<QuizModel>(
            fromFirestore: (doc, _) => QuizModel.fromJson(doc.data()!),
            toFirestore: (model, _) => model.toJson(),
          );

  @override
  Future<void> create(Map<String, dynamic> data) {
    return _firestore
        .doc(FirestorePaths.quizDoc(data['id'] as String))
        .set(data);
  }

  @override
  Future<QuizModel?> readOne(String id) {
    return _documentRef(id).get().then((doc) => doc.data());
  }
}
