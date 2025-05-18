import 'package:quiz_app/models/question_model.dart';

List<QuestionModel> questionList = [
  QuestionModel(
    question: 'Who discovered penicillin?',
    choices: [
      'Marie Curie',
      'Louis Pasteur',
      'Alexander Fleming',
      'Albert Einstein',
    ],
    correctAnswers: ['Alexander Fleming'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'What vitamins do you take?',
    choices: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
    correctAnswers: ['Vitamin D3', 'Zinc'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'Which of the following are planets in our solar system?',
    choices: ['Pluto', 'Mars', 'Venus', 'Jupiter'],
    correctAnswers: ['Mars', 'Venus', 'Jupiter'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'What year did World War II end?',
    choices: ['1939', '1943', '1945', '1950'],
    correctAnswers: ['1945'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'Which elements are gases at room temperature?',
    choices: ['Oxygen', 'Nitrogen', 'Mercury', 'Hydrogen'],
    correctAnswers: ['Oxygen', 'Nitrogen', 'Hydrogen'],
    isRadio: false,
  ),
  QuestionModel(
    question:
        'Which of these ancient civilizations were located in Mesopotamia?',
    choices: ['Sumerians', 'Babylonians', 'Egyptians', 'Greeks'],
    correctAnswers: ['Sumerians', 'Babylonians'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'What is the chemical symbol for gold?',
    choices: ['Ag', 'Au', 'Gd', 'Go'],
    correctAnswers: ['Au'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'Which animals are mammals?',
    choices: ['Whale', 'Bat', 'Crocodile', 'Penguin'],
    correctAnswers: ['Whale', 'Bat'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'Who built the Great Pyramid of Giza?',
    choices: [
      'Pharaoh Khufu',
      'Pharaoh Tutankhamun',
      'Pharaoh Ramses',
      'Pharaoh Akhenaten',
    ],
    correctAnswers: ['Pharaoh Khufu'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'Which of the following are inventions of Thomas Edison?',
    choices: ['Light bulb', 'Telephone', 'Phonograph', 'Airplane'],
    correctAnswers: ['Light bulb', 'Phonograph'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'Which planet is known as the Red Planet?',
    choices: ['Saturn', 'Earth', 'Mercury', 'Mars'],
    correctAnswers: ['Mars'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'Which events happened in the 20th century?',
    choices: [
      'American Civil War',
      'World War I',
      'Moon Landing',
      'Fall of Berlin Wall',
    ],
    correctAnswers: ['World War I', 'Moon Landing', 'Fall of Berlin Wall'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'Who was the first President of the United States?',
    choices: [
      'George Washington',
      'Thomas Jefferson',
      'Abraham Lincoln',
      'John Adams',
    ],
    correctAnswers: ['George Washington'],
    isRadio: true,
  ),
];
