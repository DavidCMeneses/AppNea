import 'package:appnea/screens/Infos/questinfo.dart';
import 'package:appnea/screens/home.dart';
import 'package:appnea/screens/m_menu.dart';
import 'package:appnea/screens/questions/inputonly.dart';
import 'package:appnea/screens/splash_s.dart';
import 'package:go_router/go_router.dart';
import 'package:appnea/screens/questions/textonly.dart';

import '../screens/questions/imageonly.dart';

// GoRouter configuration
final router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context,state) => SplashScreen(),
    ),
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
        "Edad (años):",
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
        "¿El paciente es respirador oral?",
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
        "¿El paciente tiene bruxismo?",
        entries: ['Si', 'No'],
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
        answerValues: [2,0],
        back: '/test/11',
        next: '/test/13',
      ),
    ),
    GoRoute(
      name: 'question13',
      path: '/test/13',
      builder: (context, state) => const QuestionPage(
        questNum: '13',
        questText:
        "¿El paciente presenta retrognatismo o micrognatismo mandibular?",
        entries: ['Si', 'No', 'No evaluable'],
        answerValues: [1,0,0],
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
        "Clasificación de Friedman (tamaño de la lengua):",
        entries: ['lib/images/FriedmanL_1.jpg',
          'lib/images/FriedmanL_2A.jpg',
          'lib/images/FriedmanL_2B.jpg',
          'lib/images/FriedmanL_3.png',
          'lib/images/FriedmanL_4.jpg'],
        legends: ['Clase 1', 'Clase 2a', 'Clase 2b', 'Clase 3', 'Clase 4'],
        answerValues: [0,0,0,2,2],
        back: '/test/13',
        next: '/test/15',
      ),
    ),
    GoRoute(
      name: 'question15',
      path: '/test/15',
      builder: (context, state) => const ImagePage(
        questNum: '15',
        questText:
        "Clasificación de Friedman (tamaño de las amigdalas):",
        entries: ['lib/images/FriedmanA_0.jpg',
          'lib/images/FriedmanA_1.jpg',
          'lib/images/FriedmanA_2.jpg',
          'lib/images/FriedmanA_3.jpg',
          'lib/images/FriedmanA_4.jpg',],
        legends: ['Tamaño 0', 'Tamaño 1', 'Tamaño 2', 'Tamaño 3', 'Tamaño 4'],
        answerValues: [0,0,0,2,2],
        back: '/test/14',
        next: '/test/16',
      ),
    ),
    // Aquí emíeza el cuestionario de Berlín
    GoRoute(
      name: 'questionB1',
      path: '/test/16',
      builder: (context, state) => const QuestionPage(
        questNum: '16',
        questText:
        "En los últimos 5 años su peso ha:",
        entries: ['Aumentado', 'Disminuido', 'No ha cambiado'],
        answerValues: [0,0,0],
        back: '/test/15',
        next: '/test/17',
      ),
    ),
    GoRoute(
      name: 'questionB2',
      path: '/test/17',
      builder: (context, state) => const QuestionPage(
        questNum: '17',
        questText:
        "¿Usted ronca?",
        entries: ['Si', 'No', 'No sé'],
        answerValues: [1,0,0],
        back: '/test/16',
        next: '/test/18',
      ),
    ),
    GoRoute(
      name: 'questionB3',
      path: '/test/18',
      builder: (context, state) => const QuestionPage(
        questNum: '18',
        questText:
        "Su ronquido es (Si la respuesta anterior fue si)",
        entries: [
          'Ligeramente más fuerte que respirar',
          'Tan fuerte como hablar',
          'Más fuerte que hablar',
          'Muy fuerte'
        ],
        answerValues: [0,0,1,1],
        back: '/test/17',
        next: '/test/19',
      ),
    ),
    GoRoute(
      name: 'questionB4',
      path: '/test/19',
      builder: (context, state) => const QuestionPage(
        questNum: '19',
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
        back: '/test/18',
        next: '/test/20',
      ),
    ),
    GoRoute(
      name: 'questionB5',
      path: '/test/20',
      builder: (context, state) => const QuestionPage(
        questNum: '20',
        questText:
        "¿Alguna vez su ronquido ha molestado a otras personas?",
        entries: ['Si', 'No', 'No sé'],
        answerValues: [1,0,0],
        back: '/test/19',
        next: '/test/21',
      ),
    ),
    GoRoute(
      name: 'questionB6',
      path: '/test/21',
      builder: (context, state) => const QuestionPage(
        questNum: '21',
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
        back: '/test/20',
        next: '/test/22',
      ),
    ),
    GoRoute(
      name: 'questionB7',
      path: '/test/22',
      builder: (context, state) => const QuestionPage(
        questNum: '22',
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
        back: '/test/21',
        next: '/test/23',
      ),
    ),
    GoRoute(
      name: 'questionB8',
      path: '/test/23',
      builder: (context, state) => const QuestionPage(
        questNum: '23',
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
        back: '/test/22',
        next: '/test/24',
      ),
    ),
    GoRoute(
      name: 'questionB9',
      path: '/test/24',
      builder: (context, state) => const QuestionPage(
        questNum: '24',
        questText:
        "¿Alguna vez se ha sentido somnoliento o se ha quedado dormido mientras va de pasajero en un auto o está conduciendo?",
        entries: [
          'Si',
          'No'
        ],
        answerValues: [0,0],
        back: '/test/23',
        next: '/test/25',
      ),
    ),
    GoRoute(
      name: 'questionB10',
      path: '/test/25',
      builder: (context, state) => const QuestionPage(
        questNum: '25',
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
        back: '/test/24',
        next: '/test/26',
      ),
    ),
    GoRoute(
      name: 'questionB11',
      path: '/test/26',
      builder: (context, state) => const QuestionPage(
        questNum: '26',
        questText:
        "¿Usted tiene la presión arterial alta?",
        entries: ['Si', 'No', 'No sabe'],
        answerValues: [1,0,0],
        back: '/test/25',
        next: '/',
      ),
    ),
    GoRoute(
        name: 'info0',
        path: '/test/info/0',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Definición AOS',
            infoBody: """       
El síndrome de Apnea Obstructiva del Sueño (AOS) es una condición que afecta la respiración durante el sueño. Se caracteriza por una reducción en el flujo del aire hacia los pulmones debido a la obstrucción parcial o total de la vía aérea superior y los múltiples despertares generados a partir de la respuesta de los músculos de la respiración en su intento de normalizar el flujo del aire disminuido. 

El odontólogo durante la consulta odontológica puede identificar factores de riesgo por medio de la anamnesis y exámenes complementarios. Realizar este cuestionario le permitirá valorar el riesgo del paciente a desarrollar AOS y guiarlo, proporcionando una atención integral.

          """)
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
    GoRoute(
        name: 'info2',
        path: '/test/info/2',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Alcoholismo',
            infoBody: """       
El consumo de alcohol afecta el tono muscular de la musculatura orofaríngea relajando la base de la lengua, induciendo el colapso de la vía aérea superior. A su vez, su ingesta afecta a los receptores GABA, generando la depresión del impulso respiratorio, lo que favorece la aparición de la Apnea Central del Sueño. (1)\v

Referencia \v
\t 1. Burgos-Sanchez C, Jones NN, Avillion M, Gibson SJ, Patel JA, Neighbors J, et al. Impact of Alcohol Consumption on Snoring and Sleep Apnea: A Systematic Review and Meta-analysis. Otolaryngol Neck Surg. diciembre de 2020;163(6):1078-86.\v
          """)
    ),
    GoRoute(
        name: 'info3',
        path: '/test/info/3',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Respiración oral',
            infoBody: """       
La respiración oral es un indicador de una vía aérea superior colapsada dado que refleja la dificultad del paciente al respirar por la nariz. Se relaciona la respiración oral con otros factores de riesgo de AOS como la macroglosia, el tamaño aumentado de las amígdalas y otros hallazgos de la orofaringe. (1)\v

Referencia \v
\t 1. Realpe MFR. Evaluación semiológica de enfermedad oral en sujetos con apnea obstructiva del sueño. :69. \v
          """)
    ),
    GoRoute(
        name: 'info4',
        path: '/test/info/4',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Bruxismo',
            infoBody: """       
El bruxismo es una alteración en la actividad de la musculatura de la masticación que se caracteriza por rechinar y apretar los dientes. No se termina de definir en términos de causalidad la relación de estos dos. Sin embargo, comparten factores de riesgo como el alcoholismo y consumo de tabaco. 
Se ha evidenciado que el bruxismo se evidencia en estadios leves a moderados de apnea obstructiva del sueño. \v

          """)
    ),
    GoRoute(
        name: 'info5',
        path: '/test/info/5',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Edentulismo total',
            infoBody: """       
El edentulismo y la AOS comparten la edad avanzada como factor de riesgo. Los cambios anatómicos que genera la pérdida dental pueden reducir el espacio retrolingual y comprometer la permeabilidad de las vías respiratorias. Los mismos cambios alteran la función de los músculos dilatadores de la faringe, aumentando la resistencia de la vía aérea superior, elevando el riesgo de su colapso y la aparición de episodios de apnea (43).  \v

         """)
    ),
    GoRoute(
        name: 'info6',
        path: '/test/info/6',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Friedman (Posición de la lengua)',
            infoBody: """       
Friedman et al. en 1999. Clasificación derivada de las observaciones descritas en la Clasificación de Mallampati, pero enfocadas esta vez para su uso en la medicina del sueño. Esta permite obtener una aproximación a la presencia de una obstrucción a nivel hipofaringeo Se determina al evaluar la lengua en su posición natural y en reposo dentro de la boca.\v

         """)
    ),

  ],
);