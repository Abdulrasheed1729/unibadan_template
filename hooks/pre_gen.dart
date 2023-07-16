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
  final isCOM = faculty == '{college of medicine}';
  final isEducation = faculty == '{education}';
  final isRNR = faculty == '{renewable natural resources}';
  final isPharmacy = faculty == '{pharmacy}';
  final isLaw = faculty == '{law}';
  final isScience = faculty == '{science}';
  final isSocs = faculty == '{social science}';
  final isTech = faculty == '{technology}';
  final isVetMed = faculty == '{veterinary medicine}';

  String department = '';

  if (isArt) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: artsDepartments,
      defaultValue: 'Music',
    );
  }

  if (isAgric) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: agricDepartments,
      defaultValue: 'Animal Science',
    );
  }

  if (isCOM) {}

  if (isRNR) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: rnrDepartments,
      defaultValue: 'Aquaculture and Fisheries Management',
    );
  }

  if (isLaw) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: lawDepartments,
      defaultValue: 'Public Law',
    );
  }
  if (isEducation) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: educationDepartments,
      defaultValue: 'Educational Management',
    );
  }

  if (isPharmacy) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: pharmacyDepartments,
      defaultValue: 'Pharmacognosy',
    );
  }

  if (isVetMed) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: vetMedDepartments,
      defaultValue: 'Veterinary Anatomy',
    );
  }

  if (isScience) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: scienceDepartments,
      defaultValue: 'Mathematics',
    );
  }

  if (isSocs) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: socsDepartments,
      defaultValue: 'Political Science',
    );
  }

  if (isTech) {
    department = context.logger.chooseOne(
      'Select your department',
      choices: techDepartments,
      defaultValue: 'Civil Engineering',
    );
  }

  context.vars = {
    ...context.vars,
    'isBsc': isBsc,
    'isMsc': isMsc,
    'isPhd': isPhd,
    'department': department,
  };
}

/// Faculty of Science departments
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

/// Faculty of Arts departments
const artsDepartments = <String>[
  'Arabic and Islamic Studies',
  'Archaeology and Anthropology',
  'Classics',
  'Communication and Language Arts',
  'English',
  'European Studies',
  'History',
  'Linguistics and African Languages',
  'Music',
  'Philosophy',
  'Religious Studies',
  'Theatre Arts',
];

/// Faculty of Technology departments
const techDepartments = <String>[
  'Civil Engineering',
  'Electrical and Electronics Engineering',
  'Food Technology',
  'Industrial and Production Engineering',
  'Mechanical Engineering Engineering',
  'Petroleum Engineering',
];

/// Faculty of Law departments
const lawDepartments = <String>[
  'Jurisprudence',
  'Commercial and Industrial Law',
  'Public Law',
  'Private and Property Law',
];

/// Faculty of Social Sciences departments
const socsDepartments = <String>[
  'Economics',
  'Geography',
  'Political Science',
  'Psychology',
  'Sociology',
];

/// Faculty of Agiculture departments
const agricDepartments = <String>[
  'Agricultural Economics',
  'Agricultural Extension and Rural Development',
  'Animal Science',
  'Crop Protection and Environmental Biology',
  'Crop and Horticultural Sciences',
  'Soil Resources Management',
];

/// Faculty of Education departments
const educationDepartments = <String>[
  'Adult Education',
  'Guidance and Counselling',
  'Library Archival and Information Studies',
  'Special Education',
  'Arts and Social Sciences Education',
  'Early Childhood and Educational Foundations',
  'Educational Management',
  'Human Kinetics and Health Education',
  'Social Work',
  'Science and Technology Education',
];

/// Faculty of Renewable and Natural Resources departments
const rnrDepartments = <String>[
  'Aquaculture and Fisheries Management',
  'Forest Production and Products',
  'Social and Environmental Forestry',
  'Wildlife and Ecotourism Management',
];

/// Faculty of Pharmacy departments
const pharmacyDepartments = <String>[
  'Clinical Pharmacy and Pharmacy Administration',
  'Pharmaceutical Chemistry',
  'Pharmaceutics and Industrial Pharmacy',
  'Pharmaceutical Microbiology',
  'Pharmacognosy',
  'Pharmacology and Toxicology',
];

/// Faculty of Veterinary Medicine departments
const vetMedDepartments = <String>[
  'Veterinary Anatomy',
  'Veterinary Physiology and Biochemistry',
  'Veterinary Microbiology',
  'Veterinary Parasitology',
  'Veterinary Pathology',
  'Veterinary Pharmacology and Toxicology',
  'Theriogeneology',
  'Veterinary Medicine',
  'Veterinary Surgery and Radiology',
  'Veterinary Public Health and Preventive Medicine',
  'Veterinary Anatomy',
];
