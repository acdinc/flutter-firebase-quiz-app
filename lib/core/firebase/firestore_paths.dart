class FirestorePaths {
  // collections

  static const usersCollection = 'users';
  static const quizzesCollection = 'quizzes';
  static const topicsCollection = 'topics';

  // documents

  static String userDoc(String id) => '$usersCollection/$id';
  static String quizDoc(String id) => '$quizzesCollection/$id';
  static String topicDoc(String id) => '$topicsCollection/$id';
}
