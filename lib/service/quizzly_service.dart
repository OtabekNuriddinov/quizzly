
class QuizzlyService{

  QuizzlyService._();
  static final QuizzlyService _singleton = QuizzlyService._();
  factory QuizzlyService()=>_singleton;

  static List<Map<String, dynamic>> level1 = [
    {
      'question': '3 + 4 = ?',
      'answers': [
        {'text': '5', 'value': 5},
        {'text': '7', 'value': 7},
        {'text': '8', 'value': 8},
        {'text': '2', 'value': 2},
      ],
      'correctAnswer': 7,
    },
    {
      'question': '2 + 1 = ?',
      'answers': [
        {'text': '2', 'value': 2},
        {'text': '5', 'value': 5},
        {'text': '3', 'value': 3},
        {'text': '4', 'value': 4},
      ],
      'correctAnswer': 3,
    },
    {
      'question': '5 + 2 = ?',
      'answers': [
        {'text': '7', 'value': 7},
        {'text': '6', 'value': 6},
        {'text': '4', 'value': 4},
        {'text': '8', 'value': 8},
      ],
      'correctAnswer': 7,
    },
    {
      'question': '3 + 2 = ?',
      'answers': [
        {'text': '9', 'value': 9},
        {'text': '5', 'value': 5},
        {'text': '4', 'value': 4},
        {'text': '6', 'value': 6},
      ],
      'correctAnswer': 5,
    },
    {
      'question': '8 + 1 = ?',
      'answers': [
        {'text': '7', 'value': 7},
        {'text': '6', 'value': 6},
        {'text': '8', 'value': 8},
        {'text': '9', 'value': 9},
      ],
      'correctAnswer': 9,
    },
    {
      'question': '2 + 4 = ?',
      'answers': [
        {'text': '6', 'value': 6},
        {'text': '4', 'value': 4},
        {'text': '5', 'value': 5},
        {'text': '7', 'value': 7},
      ],
      'correctAnswer': 6,
    },
    {
      'question': '7 + 1 = ?',
      'answers': [
        {'text': '7', 'value': 7},
        {'text': '4', 'value': 4},
        {'text': '6', 'value': 6},
        {'text': '8', 'value': 8},
      ],
      'correctAnswer': 8,
    },
    {
      'question': '2 + 2 = ?',
      'answers': [
        {'text': '4', 'value': 4},
        {'text': '6', 'value': 6},
        {'text': '3', 'value': 3},
        {'text': '5', 'value': 5},
      ],
      'correctAnswer': 4,
    },
    {
      'question': '6 + 3 = ?',
      'answers': [
        {'text': '6', 'value': 6},
        {'text': '5', 'value': 5},
        {'text': '8', 'value': 8},
        {'text': '9', 'value': 9},
      ],
      'correctAnswer': 9,
    },
    {
      'question': '1 + 4 = ?',
      'answers': [
        {'text': '4', 'value': 4},
        {'text': '5', 'value': 5},
        {'text': '6', 'value': 6},
        {'text': '3', 'value': 3},
      ],
      'correctAnswer': 5,
    },
  ];


  static List<Map<String, dynamic>> level2 = [
    {
      'question': '3 * 2 = ?',
      'answers': [
        {'text': '5', 'value': 5},
        {'text': '6', 'value': 6},
        {'text': '3', 'value': 3},
        {'text': '8', 'value': 8},
      ],
      'correctAnswer': 6,
    },
    {
      'question': '4 / 2 = ?',
      'answers': [
        {'text': '3', 'value': 3},
        {'text': '5', 'value': 5},
        {'text': '2', 'value': 2},
        {'text': '1', 'value': 1},
      ],
      'correctAnswer': 2,
    },
    {
      'question': '1 * 7 = ?',
      'answers': [
        {'text': '7', 'value': 7},
        {'text': '5', 'value': 5},
        {'text': '6', 'value': 6},
        {'text': '8', 'value': 8},
      ],
      'correctAnswer': 7,
    },
    {
      'question': '6 / 2 = ?',
      'answers': [
        {'text': '6', 'value': 6},
        {'text': '2', 'value': 2},
        {'text': '5', 'value': 5},
        {'text': '3', 'value': 3},
      ],
      'correctAnswer': 3,
    },
    {
      'question': '5 * 2 = ?',
      'answers': [
        {'text': '10', 'value': 10},
        {'text': '8', 'value': 8},
        {'text': '6', 'value': 6},
        {'text': '7', 'value': 7},
      ],
      'correctAnswer': 10,
    },
    {
      'question': '8 / 2 = ?',
      'answers': [
        {'text': '3', 'value': 3},
        {'text': '6', 'value': 6},
        {'text': '4', 'value': 4},
        {'text': '2', 'value': 2},
      ],
      'correctAnswer': 4,
    },
    {
      'question': '5 * 1 = ?',
      'answers': [
        {'text': '6', 'value': 6},
        {'text': '5', 'value': 5},
        {'text': '4', 'value': 4},
        {'text': '7', 'value': 7},
      ],
      'correctAnswer': 5,
    },
    {
      'question': '6 / 3 = ?',
      'answers': [
        {'text': '4', 'value': 4},
        {'text': '6', 'value': 6},
        {'text': '5', 'value': 5},
        {'text': '2', 'value': 2},
      ],
      'correctAnswer': 2,
    },
    {
      'question': '2 * 5 = ?',
      'answers': [
        {'text': '5', 'value': 5},
        {'text': '9', 'value': 9},
        {'text': '10', 'value': 10},
        {'text': '8', 'value': 8},
      ],
      'correctAnswer': 10,
    },
    {
      'question': '10 / 2 = ?',
      'answers': [
        {'text': '5', 'value': 5},
        {'text': '6', 'value': 6},
        {'text': '3', 'value': 3},
        {'text': '4', 'value': 4},
      ],
      'correctAnswer': 5,
    },
  ];


  static List<Map<String, dynamic>> level3 = [
    {
      'question': '12 + 7 = ?',
      'answers': [
        {'text': '14', 'value': 14},
        {'text': '19', 'value': 19},
        {'text': '17', 'value': 17},
        {'text': '16', 'value': 16},
      ],
      'correctAnswer': 19,
    },
    {
      'question': '6 * 2 = ?',
      'answers': [
        {'text': '15', 'value': 15},
        {'text': '14', 'value': 14},
        {'text': '11', 'value': 11},
        {'text': '12', 'value': 12},
      ],
      'correctAnswer': 12,
    },
    {
      'question': '20 - 7 = ?',
      'answers': [
        {'text': '13', 'value': 13},
        {'text': '18', 'value': 18},
        {'text': '19', 'value': 19},
        {'text': '16', 'value': 16},
      ],
      'correctAnswer': 13,
    },
    {
      'question': '9 + 7 = ?',
      'answers': [
        {'text': '12', 'value': 12},
        {'text': '15', 'value': 15},
        {'text': '16', 'value': 16},
        {'text': '15', 'value': 15},
      ],
      'correctAnswer': 16,
    },
    {
      'question': '20 / 5 = ?',
      'answers': [
        {'text': '4', 'value': 4},
        {'text': '6', 'value': 6},
        {'text': '8', 'value': 8},
        {'text': '5', 'value': 5},
      ],
      'correctAnswer': 4,
    },
    {
      'question': '2 * 7 = ?',
      'answers': [
        {'text': '15', 'value': 15},
        {'text': '19', 'value': 19},
        {'text': '17', 'value': 17},
        {'text': '14', 'value': 14},
      ],
      'correctAnswer': 14,
    },
    {
      'question': '14 + 3 = ?',
      'answers': [
        {'text': '17', 'value': 17},
        {'text': '19', 'value': 19},
        {'text': '14', 'value': 14},
        {'text': '16', 'value': 16},
      ],
      'correctAnswer': 17,
    },
    {
      'question': '19 - 6 = ?',
      'answers': [
        {'text': '11', 'value': 11},
        {'text': '18', 'value': 18},
        {'text': '13', 'value': 13},
        {'text': '16', 'value': 16},
      ],
      'correctAnswer': 13,
    },
    {
      'question': '11 + 7 = ?',
      'answers': [
        {'text': '18', 'value': 18},
        {'text': '14', 'value': 14},
        {'text': '17', 'value': 17},
        {'text': '16', 'value': 16},
      ],
      'correctAnswer': 18,
    },
    {
      'question': '15 / 3 = ?',
      'answers': [
        {'text': '10', 'value': 10},
        {'text': '6', 'value': 6},
        {'text': '5', 'value': 5},
        {'text': '7', 'value': 7},
      ],
      'correctAnswer': 5,
    },
  ];

}