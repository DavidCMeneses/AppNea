import 'package:appnea/screens/Infos/questinfo.dart';
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
        sampleText: 'Nombre y apellidos',
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
        sampleText: 'Ej: 54',
      ),
    ),
    GoRoute(
      name: 'question3',
      path: '/test/3',
      builder: (context, state) => const QuestionPage(
        questNum: '3',
        questText:
        "Sexo:",
        entries: ['Masculino', 'Femenino'],
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
        "Estatura (metros):",
        inType: 'Float',
        back: '/test/3',
        next: '/test/5',
        sampleText: 'Ej: 1.55',
      ),
    ),
    GoRoute(
      name: 'question5',
      path: '/test/5',
      builder: (context, state) => const InputPage(
        questNum: '5',
        questText:
        "Peso (kg):",
        inType: 'Int',
        back: '/test/4',
        next: '/test/6',
        sampleText: 'Ej: 60',
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
        "¿El paciente es fumador?",
        entries: ['Si, el paciente es fumador', 'El paciente es exfumador', 'No, el paciente no es fumador'],
        answerValues: [2,1,0],
        back: '/test/6',
        next: '/test/8',
        infopage: '/test/info/1',
      ),
    ),
    GoRoute(
      name: 'question8',
      path: '/test/8',
      builder: (context, state) => const QuestionPage(
        questNum: '8',
        questText:
        "Si el paciente es o fue fumador, ¿Cuántos paquetes de cigarrillos consume o solía consumir por año?",
        entries: ['Más de 20 paquetes de cigarrillos por año',
          'Entre 10 - 20 paquetes de cigarrillos por año',
          'Menos de 10 paquetes de cigarrillos por año',
          'No aplica'],
        answerValues: [2,1,1,0],
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
        "¿El paciente ingiere bebidas alcohólicas?",
        entries: ['Si, regularmente', 'Si, ocasionalmente', 'No, no consume alcohol'],
        answerValues: [2,1,0],
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
        "¿El paciente tiene bruxismo?",
        entries: ['Si', 'No'],
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
        "¿El paciente es edéntulo total?",
        entries: ['Si', 'No'],
        answerValues: [2,0],
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
        "¿El paciente presenta una alteración en el tamaño y posición de la mandíbula?",
        entries: ['Si', 'No'],
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
        "Clasificación de Friedman (tamaño de la lengua):",
        entries: ['lib/images/FriedmanL_1.jpg',
          'lib/images/FriedmanL_2A.jpg',
          'lib/images/FriedmanL_2B.jpg',
          'lib/images/FriedmanL_3.png',
          'lib/images/FriedmanL_4.jpg'],
        answerValues: [0,0,0,2,2],
        back: '/test/12',
        next: '/test/14',
      ),
    ),
    GoRoute(
      name: 'question14',
      path: '/test/14',
      builder: (context, state) => const ImagePage(
        questNum: '14',
        questText:
        "Clasificación de Friedman (tamaño de las amigdalas):",
        entries: ['lib/images/FriedmanA_0.jpg',
          'lib/images/FriedmanA_1.jpg',
          'lib/images/FriedmanA_2.jpg',
          'lib/images/FriedmanA_3.jpg',
          'lib/images/FriedmanA_4.jpg',],
        answerValues: [0,0,0,2,2],
        back: '/test/13',
        next: '/test/15',
      ),
    ),
    // Aquí emíeza el cuestionario de Berlín
    GoRoute(
      name: 'questionB1',
      path: '/test/15',
      builder: (context, state) => const QuestionPage(
        questNum: '15',
        questText:
        "En los últimos 5 años su peso ha:",
        entries: ['Aumentado', 'Disminuido', 'No ha cambiado'],
        answerValues: [0,0,0],
        back: '/test/14',
        next: '/test/16',
      ),
    ),
    GoRoute(
      name: 'questionB2',
      path: '/test/16',
      builder: (context, state) => const QuestionPage(
        questNum: '16',
        questText:
        "¿Usted ronca?",
        entries: ['Si', 'No', 'No sé'],
        answerValues: [1,0,0],
        back: '/test/15',
        next: '/test/17',
      ),
    ),
    GoRoute(
      name: 'questionB3',
      path: '/test/17',
      builder: (context, state) => const QuestionPage(
        questNum: '17',
        questText:
        "Su ronquido es (Si la respuesta anterior fue si)",
        entries: [
          'Ligeramente más fuerte que respirar',
          'Tan fuerte como hablar',
          'Más fuerte que hablar',
          'Muy fuerte'
        ],
        answerValues: [0,0,1,1],
        back: '/test/16',
        next: '/test/18',
      ),
    ),
    GoRoute(
      name: 'questionB4',
      path: '/test/18',
      builder: (context, state) => const QuestionPage(
        questNum: '18',
        questText:
        "¿Con qué frecuencia ronca?",
        entries: [
          'Todas las noches',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        answerValues: [1,1,0,0,0],
        back: '/test/17',
        next: '/test/19',
      ),
    ),
    GoRoute(
      name: 'questionB5',
      path: '/test/19',
      builder: (context, state) => const QuestionPage(
        questNum: '19',
        questText:
        "¿Alguna vez su ronquido ha molestado a otras personas?",
        entries: ['Si', 'No', 'No sé'],
        answerValues: [1,0,0],
        back: '/test/18',
        next: '/test/20',
      ),
    ),
    GoRoute(
      name: 'questionB6',
      path: '/test/20',
      builder: (context, state) => const QuestionPage(
        questNum: '20',
        questText:
        "¿Alguien ha notado que usted deja de respirar cuando duerme?",
        entries: [
          'Casi todas las noches',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        answerValues: [1,1,0,0,0],
        back: '/test/19',
        next: '/test/21',
      ),
    ),
    GoRoute(
      name: 'questionB7',
      path: '/test/21',
      builder: (context, state) => const QuestionPage(
        questNum: '21',
        questText:
        "¿Se siente ahogado o fatigado al levantarse después de dormir?",
        entries: [
          'Casi todos los días',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        answerValues: [1,1,0,0,0],
        back: '/test/20',
        next: '/test/22',
      ),
    ),
    GoRoute(
      name: 'questionB8',
      path: '/test/22',
      builder: (context, state) => const QuestionPage(
        questNum: '22',
        questText:
        "¿Se siente cansado o fatigado durante el día?",
        entries: [
          'Casi todos los días',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        answerValues: [1,1,0,0,0],
        back: '/test/21',
        next: '/test/23',
      ),
    ),
    GoRoute(
      name: 'questionB9',
      path: '/test/23',
      builder: (context, state) => const QuestionPage(
        questNum: '23',
        questText:
        "¿Alguna vez se ha sentido somnoliento o se ha quedado dormido mientras va de pasajero en un auto o está conduciendo?",
        entries: [
          'Si',
          'No'
        ],
        answerValues: [0,0],
        back: '/test/22',
        next: '/test/24',
      ),
    ),
    GoRoute(
      name: 'questionB10',
      path: '/test/24',
      builder: (context, state) => const QuestionPage(
        questNum: '24',
        questText:
        "¿Con qué frecuencia ocurre esto? (Si la respuesta anterior es sí)",
        entries: [
          'Casi todos los días',
          '1-2 veces por semana',
          '3-4 veces por semana',
          '1-2 veces por mes',
          'Nunca o casi nunca'
        ],
        answerValues: [1,1,0,0,0],
        back: '/test/23',
        next: '/test/25',
      ),
    ),
    GoRoute(
      name: 'questionB11',
      path: '/test/25',
      builder: (context, state) => const QuestionPage(
        questNum: '25',
        questText:
        "¿Usted tiene la presión arterial alta?",
        entries: ['Si', 'No', 'No sé'],
        answerValues: [1,0,0],
        back: '/test/24',
        next: '/',
      ),
    ),
    GoRoute(
      name: 'info1',
      path: '/test/info/1',
      builder: (context, state) => const QuestInfo(questPage: '/',
          infoTitle: 'Paciente fumador',
          infoBody: """       
El tabaquismo se considera un factor de riesgo para el desarrollo de episodios de apnea dado que este hábito, de acuerdo a la frecuencia y a la cantidad con la que se realice, produce inflamación de las mucosas respiratorias, obstruyendo la vía aérea superior. (1)
Los pacientes fumadores tienen el doble de probabilidad de desarrollar AOS que los pacientes que no fuman o dejaron dicho hábito. (2) \v

Referencia \v
\t 1. Yosunkaya S, Kutlu R, Vatansev H. Effects of smokıng on patıents wıth obstructıve sleep apnea syndrome. Clin Respir J. febrero de 2021;15(2):147-53. \v
\t 2. Kashyap R, Bowman TJ. Higher Prevalence of Smoking in Patients Diagnosed as Having Obstructive Sleep Apnea. :6. 

          """)
    ),
  ],
);