import 'package:appnea/screens/home.dart';
import 'package:appnea/screens/m_menu.dart';
import 'package:appnea/screens/questions/inputonly.dart';
import 'package:go_router/go_router.dart';
import 'package:appnea/screens/questions/textonly.dart';

import '../screens/questions/imageonly.dart';

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
      name: 'question1',
      path: '/test/1',
      builder: (context, state) => const InputPage(
        questNum: '1',
        questText:
        "Nombre del paciente:",
        inType: 'Text',
        back: '/',
        next: '/test/2',
      ),
    ),
    GoRoute(
      name: 'question2',
      path: '/test/2',
      builder: (context, state) => const InputPage(
        questNum: '2',
        questText:
        "Edad:",
        inType: 'Int',
        back: '/test/1',
        next: '/test/3',
      ),
    ),
    GoRoute(
      name: 'question3',
      path: '/test/3',
      builder: (context, state) => const QuestionPage(
        questNum: '3',
        questText:
        "Sexo:",
        entries: ['Hombre', 'Mujer'],
        colorCodes: [600, 600],
        answerValues: [2,1],
        back: '/test/2',
        next: '/test/4',
      ),
    ),
    GoRoute(
      name: 'question4',
      path: '/test/4',
      builder: (context, state) => const InputPage(
        questNum: '4',
        questText:
        "Estatura:",
        inType: 'Int',
        back: '/test/3',
        next: '/test/5',
      ),
    ),
    GoRoute(
      name: 'question5',
      path: '/test/5',
      builder: (context, state) => const InputPage(
        questNum: '5',
        questText:
        "Peso:",
        inType: 'Int',
        back: '/test/4',
        next: '/test/6',
      ),
    ),
    GoRoute(
      name: 'question6',
      path: '/test/6',
      builder: (context, state) => const InputPage(
        questNum: '6',
        questText:
        "IMC:",
        inType: 'Int',
        back: '/test/5',
        next: '/test/7',
      ),
    ),
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
        back: '/test/6',
        next: '/test/8',
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
        back: '/test/7',
        next: '/test/9',
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
        back: '/test/8',
        next: '/test/10',
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
        back: '/test/9',
        next: '/test/11',
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
        back: '/test/10',
        next: '/test/12',
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
        back: '/test/11',
        next: '/test/13',
      ),
    ),
    GoRoute(
      name: 'question13',
      path: '/test/13',
      builder: (context, state) => const ImagePage(
        questNum: '13',
        questText:
        "Clasificación de Friedman:",
        entries: ['lib/images/Friedman_0.jpg',
                  'lib/images/Friedman_1.jpg',],
        answerValues: [1,0],
        back: '/test/12',
        next: '/test/16',
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
        back: '/test/13',
        next: '/test/17',
      ),
    ),
    // Aquí emíeza el cuestionario de Berlín
    GoRoute(
      name: 'questionB1',
      path: '/test/17',
      builder: (context, state) => const QuestionPage(
        questNum: '17',
        questText:
        "En los últimos 5 años su peso ha:",
        entries: ['Aumentado', 'Disminuido', 'No ha cambiado'],
        colorCodes: [600, 600, 600],
        answerValues: [2,1,0],
        back: '/test/16',
        next: '/test/18',
      ),
    ),
    GoRoute(
      name: 'questionB2',
      path: '/test/18',
      builder: (context, state) => const QuestionPage(
        questNum: '18',
        questText:
        "¿Usted ronca?",
        entries: ['Si', 'No', 'No sé'],
        colorCodes: [600, 600, 600],
        answerValues: [1,0,0],
        back: '/test/17',
        next: '/test/19',
      ),
    ),
    GoRoute(
      name: 'questionB3',
      path: '/test/19',
      builder: (context, state) => const QuestionPage(
        questNum: '19',
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
        back: '/test/18',
        next: '/test/20',
      ),
    ),
    GoRoute(
      name: 'questionB4',
      path: '/test/20',
      builder: (context, state) => const QuestionPage(
        questNum: '20',
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
        back: '/test/19',
        next: '/test/21',
      ),
    ),
    GoRoute(
      name: 'questionB5',
      path: '/test/21',
      builder: (context, state) => const QuestionPage(
        questNum: '21',
        questText:
        "¿Alguna vez su ronquido ha molestado a otras personas?",
        entries: ['Si', 'No', 'No sé'],
        colorCodes: [600, 600, 600],
        answerValues: [1,0,0],
        back: '/test/20',
        next: '/test/22',
      ),
    ),
    GoRoute(
      name: 'questionB6',
      path: '/test/22',
      builder: (context, state) => const QuestionPage(
        questNum: '22',
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
        back: '/test/21',
        next: '/test/23',
      ),
    ),
    GoRoute(
      name: 'questionB7',
      path: '/test/23',
      builder: (context, state) => const QuestionPage(
        questNum: '23',
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
        back: '/test/22',
        next: '/test/24',
      ),
    ),
    GoRoute(
      name: 'questionB8',
      path: '/test/24',
      builder: (context, state) => const QuestionPage(
        questNum: '24',
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
        back: '/test/23',
        next: '/test/25',
      ),
    ),
    GoRoute(
      name: 'questionB9',
      path: '/test/25',
      builder: (context, state) => const QuestionPage(
        questNum: '25',
        questText:
        "¿Alguna vez se ha sentido somnoliento o se ha quedado dormido mientras va de pasajero en un auto o está conduciendo?",
        entries: [
          'Si',
          'No'
        ],
        colorCodes: [600, 600],
        answerValues: [1,0],
        back: '/test/24',
        next: '/test/26',
      ),
    ),
    GoRoute(
      name: 'questionB10',
      path: '/test/26',
      builder: (context, state) => const QuestionPage(
        questNum: '26',
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
        back: '/test/25',
        next: '/test/27',
      ),
    ),
    GoRoute(
      name: 'questionB11',
      path: '/test/27',
      builder: (context, state) => const QuestionPage(
        questNum: '27',
        questText:
        "¿Usted tiene la presión arterial alta?",
        entries: ['Si', 'No', 'No sé'],
        colorCodes: [600, 600, 600],
        answerValues: [1,0,0],
        back: '/test/26',
        next: '/',
      ),
    ),
  ],
);