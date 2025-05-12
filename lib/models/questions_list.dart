import 'package:quiz_app/models/question_model.dart';

List<QuestionModel> questionList = [
  QuestionModel(
    question:
        'How would you describe your level of satisfaction with the healthcare system?',
    choices: ['Strongly Satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    answers: ['Strongly Satisfied', 'Satisfied', 'Neutral', 'Not satisfied'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'Who discovered penicillin?',
    choices: [
      'Marie Curie',
      'Louis Pasteur',
      'Alexander Fleming',
      'Albert Einstein',
    ],
    answers: ['Alexander Fleming'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'What vitamins do you take?',
    choices: ['Vitamin D3', 'Vitamin B', 'Zinc', 'Magnesium'],
    answers: ['Vitamin D3', 'Zinc'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'Which of the following are planets in our solar system?',
    choices: ['Pluto', 'Mars', 'Venus', 'Jupiter'],
    answers: ['Mars', 'Venus', 'Jupiter'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'What year did World War II end?',
    choices: ['1939', '1943', '1945', '1950'],
    answers: ['1945'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'Which elements are gases at room temperature?',
    choices: ['Oxygen', 'Nitrogen', 'Mercury', 'Hydrogen'],
    answers: ['Oxygen', 'Nitrogen', 'Hydrogen'],
    isRadio: false,
  ),
  QuestionModel(
    question:
        'Which of these ancient civilizations were located in Mesopotamia?',
    choices: ['Sumerians', 'Babylonians', 'Egyptians', 'Greeks'],
    answers: ['Sumerians', 'Babylonians'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'What is the chemical symbol for gold?',
    choices: ['Ag', 'Au', 'Gd', 'Go'],
    answers: ['Au'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'Which animals are mammals?',
    choices: ['Whale', 'Bat', 'Crocodile', 'Penguin'],
    answers: ['Whale', 'Bat'],
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
    answers: ['Pharaoh Khufu'],
    isRadio: true,
  ),
  QuestionModel(
    question: 'Which of the following are inventions of Thomas Edison?',
    choices: ['Light bulb', 'Telephone', 'Phonograph', 'Airplane'],
    answers: ['Light bulb', 'Phonograph'],
    isRadio: false,
  ),
  QuestionModel(
    question: 'Which planet is known as the Red Planet?',
    choices: ['Saturn', 'Earth', 'Mercury', 'Mars'],
    answers: ['Mars'],
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
    answers: ['World War I', 'Moon Landing', 'Fall of Berlin Wall'],
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
    answers: ['George Washington'],
    isRadio: true,
  ),
];
