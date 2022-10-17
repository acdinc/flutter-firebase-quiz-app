import 'package:flutter_firebase_quiz_app/features/auth/models/user/user_model.dart';

const String userId = 'someuserid';

final anonUserWithId = UserModel(id: userId);
final anonUserWithoutId = UserModel(createDate: DateTime.now());

const newsolvedQuizzes = {
  'topic0': ['quiz0']
};
