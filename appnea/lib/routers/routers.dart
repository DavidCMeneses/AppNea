import 'package:appnea/screens/home.dart';
import 'package:appnea/screens/m_menu.dart';
import 'package:appnea/screens/questions/inputonly.dart';
import 'package:go_router/go_router.dart';
import 'package:appnea/screens/questions/textonly.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home', // Optional, add name to your routes. Allows you navigate by name instead of path
      path: '/',
      builder: (context, state) => const MyHomePage(title: "Titulo"),
    ),
    GoRoute(
      name: 'home2',
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    // Aquí empiezan las preguntas generales
    GoRoute(
      name: 'question7',
      path: '/test/7',
      builder: (context, state) => const QuestionPage(
        questNum: '7',
        questText:
        "¿El paciente fuma?",
        entries: ['Si', 'A veces', 'No'],
        colorCodes: [600, 600, 600],
        answerValues: [2,1,0],
      ),
    ),
    GoRoute(
      name: 'question7.5',
      path: '/test/7.5',
      builder: (context, state) => const InputPage(
        questNum: '75',
        questText:
        "¿El paciente fuma?",
      ),
    ),
    GoRoute(
      name: 'question8',
      path: '/test/8',
      builder: (context, state) => const QuestionPage(
        questNum: '8',
        questText:
        "¿El paciente bebe alcohol frecuentemente?",
        entries: ['Si', 'No'],
        colorCodes: [600, 600],
        answerValues: [1,0],
      ),
    ),
    GoRoute(
      name: 'question9',
      path: '/test/9',
      builder: (context, state) => const QuestionPage(
        questNum: '9',
        questText:
        "¿El paciente es respirador oral?",
        entries: ['Si', 'No'],
        colorCodes: [600, 600],
        answerValues: [1,0],
      ),
    ),
    GoRoute(
      name: 'question10',
      path: '/test/10',
      builder: (context, state) => const QuestionPage(
        questNum: '10',
        questText:
        "¿El paciente tiene periodontitis?",
        entries: ['Si', 'No'],
        colorCodes: [600, 600],
        answerValues: [1,0],
      ),
    ),
    GoRoute(
      name: 'question11',
      path: '/test/11',
      builder: (context, state) => const QuestionPage(
        questNum: '11',
        questText:
        "¿El paciente tiene bruxismo?",
        entries: ['Si', 'No'],
        colorCodes: [600, 600],
        answerValues: [1,0],
      ),
    ),
    GoRoute(
      name: 'question12',
      path: '/test/12',
      builder: (context, state) => const QuestionPage(
        questNum: '12',
        questText:
        "¿El paciente es edéntulo total?",
        entries: ['Si', 'No'],
        colorCodes: [600, 600],
        answerValues: [1,0],
      ),
    ),
    GoRoute(
      name: 'question16',
      path: '/test/16',
      builder: (context, state) => const QuestionPage(
        questNum: '16',
        questText:
        "Tamaño y posición de la mandíbula:",
        entries: ['Micrognatismo mandibular', 'Retrognatismo mandibular', 'Sin alteraciones'],
        colorCodes: [600, 600, 600],
        answerValues: [1,1,0],
      ),
    ),
    // Aquí emíeza el cuestionario de Berlín
    GoRoute(
      name: 'questionB1',
      path: '/berlin/1',
      builder: (context, state) => const QuestionPage(
        questNum: 'B1',
        questText:
        "En los últimos 5 años su peso ha:",
        entries: ['Aumentado', 'Disminuido', 'No ha cambiado'],
        colorCodes: [600, 600, 600],
        answerValues: [2,1,0],
      ),
    ),
    GoRoute(
      name: 'questionB2',
      path: '/berlin/2',
      builder: (context, state) => const QuestionPage(
        questNum: 'B2',
        questText:
        "¿Usted ronca?",
        entries: ['Si', 'No', 'No sé'],
        colorCodes: [600, 600, 600],
        answerValues: [1,0,0],
      ),
    ),
    GoRoute(
      name: 'questionB3',
      path: '/berlin/3',
      builder: (context, state) => const QuestionPage(
        questNum: 'B3',
        questText:
        "Su ronquido es (Si la respuesta anterior fue si)",
        entries: [
          'Ligeramente más fuerte que respirar',
          'Tan fuerte como hablar',
          'Más fuerte que hablar',
          'Muy fuerte'
        ],
        colorCodes: [600, 600, 600, 600],
        answerValues: [0,1,2,3],
      ),
    ),
    GoRoute(
      name: 'questionB4',
      path: '/berlin/4',
      builder: (context, state) => const QuestionPage(
        questNum: 'B4',
        questText:
        "¿Con qué frecuencia ronca?",
        entries: [
          'Todas las noches',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        colorCodes: [600, 600, 600, 600, 600],
        answerValues: [4,3,2,1,0],
      ),
    ),
    GoRoute(
      name: 'questionB5',
      path: '/berlin/5',
      builder: (context, state) => const QuestionPage(
        questNum: 'B5',
        questText:
        "¿Alguna vez su ronquido ha molestado a otras personas?",
        entries: ['Si', 'No', 'No sé'],
        colorCodes: [600, 600, 600],
        answerValues: [1,0,0],
      ),
    ),
    GoRoute(
      name: 'questionB6',
      path: '/berlin/6',
      builder: (context, state) => const QuestionPage(
        questNum: 'B6',
        questText:
        "¿Alguien ha notado que usted deja de respirar cuando duerme?",
        entries: [
          'Casi todas las noches',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        colorCodes: [600, 600, 600, 600, 600],
        answerValues: [4,3,2,1,0],
      ),
    ),
    GoRoute(
      name: 'questionB7',
      path: '/berlin/7',
      builder: (context, state) => const QuestionPage(
        questNum: 'B7',
        questText:
        "¿Se siente ahogado o fatigado al levantarse después de dormir?",
        entries: [
          'Casi todos los días',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        colorCodes: [600, 600, 600, 600, 600],
        answerValues: [4,3,2,1,0],
      ),
    ),
    GoRoute(
      name: 'questionB8',
      path: '/berlin/8',
      builder: (context, state) => const QuestionPage(
        questNum: 'B8',
        questText:
        "¿Se siente cansado o fatigado durante el día?",
        entries: [
          'Casi todos los días',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        colorCodes: [600, 600, 600, 600, 600],
        answerValues: [4,3,2,1,0],
      ),
    ),
    GoRoute(
      name: 'questionB9',
      path: '/berlin/9',
      builder: (context, state) => const QuestionPage(
        questNum: 'B9',
        questText:
        "¿Alguna vez se ha sentido somnoliento o se ha quedado dormido mientras va de pasajero en un auto o está conduciendo?",
        entries: [
          'Si',
          'No'
        ],
        colorCodes: [600, 600],
        answerValues: [1,0],
      ),
    ),
    GoRoute(
      name: 'questionB10',
      path: '/berlin/10',
      builder: (context, state) => const QuestionPage(
        questNum: 'B10',
        questText:
        "¿Con qué frecuencia ocurre esto? (Si la respuesta anterior es sí)",
        entries: [
          'Casi todos los días',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        colorCodes: [600, 600, 600, 600, 600],
        answerValues: [4,3,2,1,0],
      ),
    ),
    GoRoute(
      name: 'questionB11',
      path: '/berlin/11',
      builder: (context, state) => const QuestionPage(
        questNum: 'B11',
        questText:
        "¿Usted tiene la presión arterial alta?",
        entries: ['Si', 'No', 'No sé'],
        colorCodes: [600, 600, 600],
        answerValues: [1,0,0],
      ),
    ),
  ],
);