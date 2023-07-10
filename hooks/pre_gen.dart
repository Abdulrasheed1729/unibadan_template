import 'package:mason/mason.dart';

void run(HookContext context) {
  // Read the ptoject topic
  final projectTopic = context.vars['project_topic'];

  // Updates the project topic
  context.vars['project_topic'] = '{$projectTopic}';

  // Read name
  final name = context.vars['name'];

  // Updates the name
  context.vars['name'] = '{$name}';

  // Read name
  final matricNumber = context.vars['matric_number'];

  // Updates the name
  context.vars['matric_number'] = '{$matricNumber}';

  // Read name
  final field = context.vars['field'];

  // Updates the name
  context.vars['field'] = '{$field}';

  // Read faculty name
  final facultyName = context.vars['faculty'];

  // Updates the faculty name
  context.vars['faculty'] = '{$facultyName}';

  // Read supervisor name
  final supervisorName = context.vars['supervisor'];

  // Updates the supervisor name
  context.vars['supervisor'] = '{$supervisorName}';

  final degreeType = context.vars['degree_type'].toString().toLowerCase();

  final isBsc = degreeType == 'undergraduate';
  final isMsc = degreeType == 'masters';
  final isPhd = degreeType == 'phd';

  final faculty = context.vars['faculty'].toString().toLowerCase();

  final isArt = faculty == '{art}';
  final isAgric = faculty == '{agriculture}';
  final isBms = faculty == '{basic medical sciences}';
  final isEducation = faculty == '{education}';
  final isPharmacy = faculty == '{pharmacy}';
  final isScience = faculty == '{science}';
  final isSocs = faculty == '{social science}';
  final isTech = faculty == '{technology}';

  String department = '';
  if (isArt) {}
  if (isAgric) {}
  if (isBms) {}
  if (isEducation) {}
  if (isPharmacy) {}
  if (isScience) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: scienceDepartments,
      defaultValue: 'Mathematics',
    );
  }
  if (isSocs) {}
  if (isTech) {}

  context.vars = {
    ...context.vars,
    'isBsc': isBsc,
    'isMsc': isMsc,
    'isPhd': isPhd,
    'department': department,
  };
}

const scienceDepartments = <String>[
  'Archaeology',
  'Anthropology',
  'Boatany',
  'Microbiology',
  'Chemistry',
  'Computer Science',
  'Geology',
  'Mathematics',
  'Physics',
  'Statistics',
  'Zoology,'
];
