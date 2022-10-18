import 'package:flutter_firebase_quiz_app/features/auth/models/user/user_model.dart';

const String userId = 'someuserid';
const String topicId = 'sometopicid';
const String quizId = 'somequizid';

final anonUserWithId = UserModel(id: userId);
final anonUserWithoutId = UserModel(createDate: DateTime.now());

const newsolvedQuizzes = {
  'topic0': ['quiz0']
};

final option1 = {
  'text': 'Sample option true',
  'image': 'imagePath',
  'isCorrect': true,
};

final option2 = {
  'text': 'Sample option false',
  'detail': 'detail',
  'isCorrect': false,
};

final question1 = {
  'image': 'imagePath',
  'number': 1,
  'options': [option1, option2],
  'text': 'Sample question 1',
};

final question2 = {
  'number': 2,
  'options': [option1, option2],
  'text': 'Sample question 2',
};

final quiz = {
  'id': quizId,
  'questions': [question1, question2],
  'subTitle': 'subtitle',
  'title': 'Sample Quiz',
  'topic': topicId,
};

final topic = {
  'id': topicId,
  'desc': 'desc',
  'percent': 20,
  'quizzes': [quiz],
  'text': 'Sample Topic',
};
