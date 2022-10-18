import 'package:firebase_services/firebase_services.dart';
import 'package:flutter/foundation.dart';

import '../../../core/firebase/firestore_paths.dart';
import '../model/topic/topic_model.dart';

abstract class TopicService {
  @visibleForTesting
  Future<void> create(Map<String, dynamic> data);
  Future<List<TopicModel?>> readAll();
}

class TopicServiceImpl extends TopicService {
  TopicServiceImpl(FirebaseFirestore firestore) : _firestore = firestore;

  final FirebaseFirestore _firestore;

  CollectionReference<TopicModel> get _collectionRef => _firestore
      .collection(FirestorePaths.topicsCollection)
      .withConverter<TopicModel>(
        fromFirestore: (doc, _) => TopicModel.fromJson(doc.data()!),
        toFirestore: (model, _) => model.toJson(),
      );

  @override
  Future<void> create(Map<String, dynamic> data) {
    return _firestore
        .doc(FirestorePaths.topicDoc(data['id'] as String))
        .set(data);
  }

  @override
  Future<List<TopicModel?>> readAll() {
    return _collectionRef.get().then(
          (collection) => collection.docs.map((doc) => doc.data()).toList(),
        );
  }
}
