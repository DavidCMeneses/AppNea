import 'package:appnea/screens/Infos/questinfo.dart';
import 'package:appnea/screens/home.dart';
import 'package:appnea/screens/m_menu.dart';
import 'package:appnea/screens/questions/inputonly.dart';
import 'package:appnea/screens/splash_s.dart';
import 'package:go_router/go_router.dart';
import 'package:appnea/screens/questions/textonly.dart';

import '../screens/loading_screen.dart';
import '../screens/questions/calculator.dart';
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
      path: '/loading',
      builder: (context,state) => LoadingScreen(),
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
        infopage: '/test/info/7',
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
        infopage: '/test/info/8',
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
      builder: (context, state) => const CalculatorPage(
        questNum: '6',
        questText:
        "IMC:",
        back: '/test/5',
        next: '/test/7',
        infopage: '/test/info/9',
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
        skipQuest: ['0', '/test/9', '0', '1'],
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
        infopage: '/test/info/1',
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
        infopage: '/test/info/2',
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
        infopage: '/test/info/3',
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
        infopage: '/test/info/4',
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
        infopage: '/test/info/5',
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
        infopage: '/test/info/10',
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
        legends: [' Clase 1 ', ' Clase 2a ', ' Clase 2b ', ' Clase 3 ', ' Clase 4 '],
        answerValues: [0,1,2,3,4],
        back: '/test/13',
        next: '/test/15',
        infopage: '/test/info/6',
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
        legends: [' Tamaño 0 ', ' Tamaño 1 ', ' Tamaño 2 ', ' Tamaño 3 ', ' Tamaño 4 '],
        answerValues: [0,1,2,3,4],
        back: '/test/14',
        next: '/test/16',
        infopage: '/test/info/11',
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
        skipQuest: ['0', '/test/21', '0', '3'],
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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
        answerValues: [1,0],
        back: '/test/23',
        next: '/test/25',
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
        skipQuest: ['0', '/test/26', '0', '1'],
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
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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
        next: '/loading',
        questTitle: 'Cuestionario de Berlín ',
        infopage: '/test/info/12',
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

Referencias \v
\t 1. Yosunkaya S, Kutlu R, Vatansev H. Effects of smokıng on patıents wıth obstructıve sleep apnea syndrome. Clin Respir J. febrero de 2021;15(2):147-53. \v
\t 2. Kashyap R, Bowman TJ. Higher Prevalence of Smoking in Patients Diagnosed as Having Obstructive Sleep Apnea. :6. 
\t 3. Ioannidou D, Kalamaras G, Kotoulas SC, Pataka A. Smoking and Obstructive Sleep Apnea: Is There An Association between These Cardiometabolic Risk Factors?-Gender Analysis. Medicina (Kaunas). 2021 Oct 20;57(11):1137. doi: 10.3390/medicina57111137. PMID: 34833356; PMCID: PMC8621446. \v
          """)
    ),
    GoRoute(
        name: 'info2',
        path: '/test/info/2',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Alcoholismo',
            infoBody: """       
El consumo de alcohol afecta el tono muscular de la musculatura orofaríngea relajando la base de la lengua, induciendo el colapso de la vía aérea superior. A su vez, su ingesta afecta a los receptores GABA, generando la depresión del impulso respiratorio, lo que favorece la aparición de la Apnea Central del Sueño. (1)\v

Referencias \v
\t 1. Burgos-Sanchez C, Jones NN, Avillion M, Gibson SJ, Patel JA, Neighbors J, et al. Impact of Alcohol Consumption on Snoring and Sleep Apnea: A Systematic Review and Meta-analysis. Otolaryngol Neck Surg. diciembre de 2020;163(6):1078-86. \v
\t 2. Choudhury A, Routray D, Swain S, Das AK. Prevalence and risk factors of people at-risk of obstructive sleep apnea in a rural community of Odisha, India: a community based cross-sectional study. Sleep Med. 2019 Jun;58:42-47. doi: 10.1016/j.sleep.2019.03.014. Epub 2019 Mar 28. PMID: 31078079.  \v
          """)
    ),
    GoRoute(
        name: 'info3',
        path: '/test/info/3',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Respiración oral',
            infoBody: """       
La respiración oral es un hallazgo que surge como consecuencia de la obstrucción de la vía aérea superior, puesto que esta permite una velocidad del flujo del aire mayor a comparación con la respiración nasal con la boca abierta o cerrada; Se ha relacionado la presencia de la respiración oral con el estrechamiento de la luz faríngea y una disminución del diámetro retrogloso, lo que favorece el colapso de la vía aérea superior, conllevando a la obstrucción de esta. Además,  se relaciona la respiración oral con otros factores de riesgo de AOS como la macroglosia, el tamaño aumentado de las amígdalas y otros hallazgos de la orofaringe. \v

Referencias \v
\t 1. Suzuki M, Tanuma T. The effect of nasal and oral breathing on airway collapsibility in patients with obstructive sleep apnea: Computational fluid dynamics analyses. PLoS One. 2020 Apr 13;15(4):e0231262. doi: 10.1371/journal.pone.0231262. PMID: 32282859; PMCID: PMC7153879.  \v
          """)
    ),
    GoRoute(
        name: 'info4',
        path: '/test/info/4',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Bruxismo',
            infoBody: """       
El bruxismo se define por una actividad repetitiva de los músculos de la mandíbula, caracterizada por el apretamiento y/o rechinamiento de los dientes debido a una presión excesiva sobre la mandíbula. Este trastorno se ha observado en asociación con la Apnea Obstructiva del Sueño (AOS), dando lugar a diversas teorías que intentan explicar esta coexistencia. Una de estas teorías sugiere que el bruxismo puede actuar como un mecanismo protector contra la AOS al realizar movimientos protrusivos de la mandíbula, lo que restauraría la permeabilidad de las vías respiratorias superiores después de un evento obstructivo del sueño, protegiendo así el ciclo del sueño de una disminución en los niveles de oxígeno. Otra hipótesis considera que el bruxismo es un evento motor fisiológico necesario para lubricar las estructuras orofaríngeas y reposicionar la mandíbula durante el sueño. Además, se ha observado que en un 55% de los casos, el bruxismo precede a la AOS, mientras que en un 25% de los casos, un evento de AOS precede al bruxismo, lo que subraya la estrecha relación entre ambos trastornos. \v

Referencias \v

\t 1. González González A, Montero J, Gómez Polo C. Sleep Apnea-Hypopnea Syndrome and Sleep Bruxism: A Systematic Review. J Clin Med. 2023 Jan 23;12(3):910. doi: 10.3390/jcm12030910. PMID: 36769558; PMCID: PMC9918154.  \v
          """)
    ),
    GoRoute(
        name: 'info5',
        path: '/test/info/5',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Edentulismo total',
            infoBody: """       
El edentulismo y la AOS comparten la edad avanzada como factor de riesgo. Los cambios anatómicos que genera la pérdida dental pueden reducir el espacio retrolingual y comprometer la permeabilidad de las vías respiratorias. Los mismos cambios alteran la función de los músculos dilatadores de la faringe, aumentando la resistencia de la vía aérea superior, elevando el riesgo de su colapso y la aparición de episodios de apnea (43).  \v

Referencias \v

\t 1. Tripathi, A., Bagchi, S., Singh, J., Tripathi, S., Gupta, NK y Arora, V. (2017). Incidencia de apnea obstructiva del sueño en pacientes ancianos desdentados y posible correlación entre la serotonina sérica y el índice de apnea-hipopnea. Revista de Prostodoncia. doi:10.1111/jopr.12654  \v
         """)
    ),
    GoRoute(
        name: 'info6',
        path: '/test/info/6',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Friedman (Posición de la lengua)',
            infoBody: """       
Friedman et al. 1999. La posición y el tamaño de la lengua se ha considerado como un factor determinante para el desarrollo de AOS, ya que un aumento de tamaño o una posición retruida de esta pueden favorecer el colapso de la vía aérea superior. Friedman desarrolló una clasificación para evaluar este aspecto enfocado en la medicina dental del sueño. Para su evaluación el paciente se posiciona de manera neutral, abriendo la boca sin sacar la lengua, de este modo permitiendo la exploración de la lengua en posición natural. Según los hallazgos observados durante el examen, la posición de la lengua se clasifica en cinco categorías: \v

* Clase 1: Se visualizan totalmente la úvula y las amígdalas.  \v
* Clase 2a: Se visualiza la úvula, pero sólo parte de las amígdalas.  \v
* Clase 2b: Se observa el paladar blando completo hasta la base de la úvula, pero sin observarse la úvula ni las amígdalas.  \v
* Clase 3: Se observa el sector anterior del paladar blando, pero se dificulta la visualización del sector posterior.  \v
* Clase 4: Sólo se observa el paladar duro.  \v

Referencias \v

\t Friedman, M. (2009). Friedman tongue position and the staging of obstructive sleep apnea/hypopnea syndrome. Sleep Apnea and Snoring, 104–110. doi:10.1016/b978-1-4160-3112-3.00016-4 \v


         """)
    ),
    GoRoute(
        name: 'info7',
        path: '/test/info/7',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Edad',
            infoBody: """       
La edad se reconoce como un factor de riesgo significativo en el desarrollo de la Apnea Obstructiva del Sueño (AOS). Aunque esta asociación es bien conocida, aún persisten interrogantes sobre la naturaleza exacta de esta relación con este trastorno. Investigaciones recientes han destacado que, a medida que las personas envejecen, experimentan cambios en la anatomía y la función de los músculos dilatadores faríngeos. Estos cambios pueden incluir una disminución en el tamaño de las vías respiratorias, la acumulación de grasa alrededor de la faringe y variaciones en el tamaño del paladar blando, entre otros aspectos anatómicos. Estas alteraciones conllevan a una reducción del reflejo de presión negativa durante el sueño, lo que aumenta la probabilidad de colapso de las vías respiratorias y, por ende, el riesgo de desarrollar AOS en personas de edad avanzada.\v

Referencias \v
\t 1. Malhotra A, Huang Y, Fogel R, Lazic S, Pillar G, Jakab M, Kikinis R, White DP. Aging influences on pharyngeal anatomy and physiology: the predisposition to pharyngeal collapse. Am J Med. 2006 Jan;119(1):72.e9-14. doi: 10.1016/j.amjmed.2005.01.077. PMID: 16431197; PMCID: PMC2287192. \v
 
         """)
    ),
    GoRoute(
        name: 'info8',
        path: '/test/info/8',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Sexo',
            infoBody: """       
La Apnea Obstructiva del Sueño (AOS) ha sido asociada con una predisposición en el sexo masculino. Aunque el papel exacto del sexo en este trastorno aún no está completamente claro, se sugiere que esta relación puede deberse a la mayor prevalencia de obesidad en los hombres, así como a diferencias anatómicas en las vías respiratorias, con una mayor longitud en los hombres que podría aumentar la susceptibilidad al colapso de la vía aérea. Sin embargo, es importante destacar que existen diferencias en la presentación clínica de la AOS entre hombres y mujeres, con las últimas siendo más propensas a experimentar síntomas como insomnio, fatiga y dolores de cabeza en lugar de ronquidos y apnea. Estas diferencias en el perfil clínico pueden conducir a una subestimación de la AOS en mujeres, lo que sugiere un posible sesgo literario asociado con un subdiagnóstico en ciertos grupos poblacionales.\v

Referencias \v
\t 1. Jordan AS, McSharry DG, Malhotra A. Adult obstructive sleep apnoea. Lancet. 2014 Feb 22;383(9918):736-47. doi: 10.1016/S0140-6736(13)60734-5. Epub 2013 Aug 2. PMID: 23910433; PMCID: PMC3909558. \v
\t 2. Bonsignore MR, Saaresranta T, Riha RL. Sex differences in obstructive sleep apnoea. Eur Respir Rev. 2019 Nov 6;28(154):190030. doi: 10.1183/16000617.0030-2019. PMID: 31694839; PMCID: PMC9488655. \v
\t 3. oannidou D, Kalamaras G, Kotoulas SC, Pataka A. Smoking and Obstructive Sleep Apnea: Is There An Association between These Cardiometabolic Risk Factors?-Gender Analysis. Medicina (Kaunas). 2021 Oct 20;57(11):1137. doi: 10.3390/medicina57111137. PMID: 34833356; PMCID: PMC8621446. \v
         """)
    ),
    GoRoute(
        name: 'info9',
        path: '/test/info/9',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'IMC',
            infoBody: """       
La obesidad, caracterizada por un exceso de grasa corporal, se ha asociado repetidamente en la literatura médica como un factor de riesgo para diversas enfermedades cardiovasculares y endocrinas. Además, se ha establecido una relación directa entre la obesidad y los trastornos del sueño. Este vínculo se atribuye al depósito de tejido adiposo en el área del cuello, lo que puede provocar una compresión parcial o total de las vías respiratorias superiores durante el sueño, resultando en una obstrucción del flujo de aire y la aparición de ronquidos. La evaluación de esta condición se realiza mediante el índice de masa corporal (IMC), y los índices que indican sobrepeso u obesidad suelen asociarse con un riesgo intermedio-alto para desarrollar Apnea Obstructiva del Sueño (AOS).\v

Referencias \v
\t 1. Vicente-Herrero, M. T., Capdevila García, L., Bellido Cambrón, M. del C., Ramírez Iñiguez de la Torre, M. V., & Lladosa Marco, S. (2017). Riesgo cardiovascular y obesidad en el síndrome de apnea del sueño valorado con el cuestionario Stop-Bang. Endocrinología, Diabetes y Nutrición, 64(10), 544–551. doi:10.1016/j.endinu.2017.09.005. \v
 
         """)
    ),
    GoRoute(
        name: 'info10',
        path: '/test/info/10',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Posición mandibular',
            infoBody: """       
El tamaño y la posición de la mandíbula se ha relacionado con el desarrollo de la Apnea Obstructiva del Sueño (AOS) ya que se ha observado que los pacientes con micrognatismo, retrognatismo mandibular o una combinación de ambos presentan vías aéreas superiores más estrechas, lo que facilita el colapso de estas vías durante el sueño.\v
Además, se ha establecido una relación significativa entre la posición de la mandíbula y la distancia con el hueso hioides. Sugiriendo que un tamaño reducido del hueso hioides en términos de longitud anteroposterior y transversal se correlaciona con los casos más graves de AOS. Además, su posición se ha relacionado con la acumulación de grasa en la región faríngea, lo que puede desplazar la lengua hacia atrás y reducir la permeabilidad de las vías respiratorias superiores. No obstante, para la evaluación de este factor se requiere de exámenes complementarios. \v

Referencias \v

\t 1. Liao FC, Zhang T, Huang XP, Sangwatanakul J, Li HY, Zhou N. Correlation analysis of upper airway morphology in patients with obstructive sleep apnea and anatomically small retruded mandibles. CRANIO®. 23 de diciembre de 2020;1-7.  \v
\t 2. Aihara K, Oga T, Harada Y, Chihara Y, Handa T, Tanizawa K, et al. Analysis of anatomical and functional determinants of obstructive sleep apnea. Sleep Breath. junio de 2012;16(2):473-81.  \v
         """)
    ),
    GoRoute(
        name: 'info11',
        path: '/test/info/11',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Friedman (Tamaño de las amigdalas)',
            infoBody: """       
Friedman et al. 1999. El tamaño de la lengua se ha considerado como un factor determinante para el desarrollo de AOS, ya que un aumento en su tamaño puede favorecer la obstrucción de la vía aérea superior. Friedman desarrolló una clasificación para evaluar este aspecto enfocado en la medicina dental del sueño. Para su evaluación el paciente se posiciona de manera neutral, abriendo la boca sin sacar la lengua, de este modo permitiendo la exploración de la lengua en posición natural. Según los hallazgos observados durante el examen, el  tamaño de las amigdalas se clasifica en cinco categorías: \v

* Tamaño 0: Amígdalas extirpadas (Amigdalectomía).  \v
* Tamaño 1: Amígdalas contenidas dentro de los pilares. \v  
* Tamaño 2: Amígdalas se extienden hasta los pilares.  \v
* Tamaño 3: Amígdalas se extienden más allá de los pilares, pero no hasta la línea media. \v
* Tamaño 4: Amígdalas se extienden hasta la línea media. \v

Referencias \v
\t 1. Friedman, M. (2009). Friedman tongue position and the staging of obstructive sleep apnea/hypopnea syndrome. Sleep Apnea and Snoring, 104–110. doi:10.1016/b978-1-4160-3112-3.00016-4   \v
 
         """)
    ),
    GoRoute(
        name: 'info12',
        path: '/test/info/12',
        builder: (context, state) => const QuestInfo(questPage: '/',
            infoTitle: 'Cuestionario de Berlín',
            infoBody: """       
El cuestionario de Berlín (BQ) es un cuestionario que se organiza en tres categorías, cada una dirigida a identificar diferentes aspectos relacionados con los trastornos respiratorios durante el sueño. La primera categoría aborda episodios de apnea y ronquidos, evaluando su frecuencia e intensidad. La segunda categoría se centra en la fatiga y somnolencia, mientras que la tercera categoría examina la presión arterial y el índice de masa corporal (IMC). El cuestionario clasifica el riesgo como alto o bajo según la presencia de síntomas persistentes en cada categoría. Se considera alto riesgo aquellos pacientes que presentan resultados positivos en al menos dos categorías, mientras que aquellos con síntomas positivos en una o ninguna categoría se clasifican como bajo riesgo para la Apnea Obstructiva del Sueño (AOS). \v

Referencias \v
\t 1. Netzer NC, Stoohs RA, Netzer CM, Clark K, Strohl KP. Using the Berlin Questionnaire to identify patients at risk for the sleep apnea syndrome. Ann Intern Med. 1999 Oct 5;131(7):485-91. doi: 10.7326/0003-4819-131-7-199910050-00002. PMID: 10507956. \v
 
         """)
    ),

  ],
);