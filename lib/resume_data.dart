class ContactInfo {
  final String name;
  final String location;
  final String phone;
  final String email;

  const ContactInfo({
    required this.name,
    required this.location,
    required this.phone,
    required this.email,
  });
}

class EducationItem {
  final String degree;
  final String university;
  final String location;
  final String date;

  const EducationItem({
    required this.degree,
    required this.university,
    required this.location,
    required this.date,
  });
}

class ProjectItem {
  final String title;
  final String date;
  final List<String> description;

  const ProjectItem({
    required this.title,
    required this.date,
    required this.description,
  });
}

class SkillCategory {
  final String category;
  final String details;

  const SkillCategory({
    required this.category,
    required this.details,
  });
}

class ActivityItem {
  final String title;
  final String date;
  final String organization;
  final String location;
  final List<String> description;

  const ActivityItem({
    required this.title,
    required this.date,
    required this.organization,
    required this.location,
    required this.description,
  });
}

class WorkExperienceItem {
  final String title;
  final String date;
  final String company;
  final String location;
  final List<String> description;

  const WorkExperienceItem({
    required this.title,
    required this.date,
    required this.company,
    required this.location,
    required this.description,
  });
}

class Resume {
  final ContactInfo contactInfo;
  final List<EducationItem> education;
  final List<ProjectItem> projects;
  final List<SkillCategory> skills;
  final List<ActivityItem> activitiesAndLeadership;
  final List<WorkExperienceItem> workExperience;

  const Resume({
    required this.contactInfo,
    required this.education,
    required this.projects,
    required this.skills,
    required this.activitiesAndLeadership,
    required this.workExperience,
  });
}

const myResume = Resume(
  contactInfo: ContactInfo(
    name: 'Eric Orr',
    location: 'Bend Oregon',
    phone: '503-983-3279',
    email: 'Eric.Orr.Dev@gmail.com',
  ),
  education: [
    EducationItem(
      degree: 'B.S. Computer Science',
      date: 'June 2027',
      university: 'Oregon State University - Cascades',
      location: 'Bend, Oregon',
    ),
  ],
  projects: [
    ProjectItem(
      title: 'LINQcod',
      date: 'Sep. 2025 - Present',
      description: [
        'Created a web game in C# using .NET Blazor for frontend to teach LINQ to those new to the .NET ecosystem.',
      ],
    ),
    ProjectItem(
      title: 'SoundCloud Scrapper',
      date: 'Oct. 2024 - Apr. 2025',
      description: [
        'Developed a distributed web scraper in C# and PostgreSQL to collect and analyze tens of thousands of SoundCloud profiles, tracks and comments for academic research, with a throughput of ten thousand scraped pages daily.',
        'Designed a scalable, distributed system with fault-tolerant mechanisms and optimized SQL queries.',
      ],
    ),
    ProjectItem(
      title: 'WARGAMES',
      date: 'Apr. 2024 - Apr. 2024',
      description: [
        'Created a nuclear war themed, terminal-based, prisoners\' dilemma game written in C.',
      ],
    ),
    ProjectItem(
      title: 'MText++',
      date: 'Dec. 2022 - Dec. 2022',
      description: [
        'Recreated increment text feature from MicroStation and brought it to AutoCAD, written in AutoLISP.',
        'Later recreated in C# using ObjectARX for better contemporary usage.',
        'Demonstrated knowledge in CAD data structures and tool building by developing a CAD tool to enhances design capabilities and addresses increasing demands of today’s design infrastructure.',
      ],
    ),
  ],
  skills: [
    SkillCategory(
      category: 'Languages',
      details: 'Competent: C, C#, HTML, CSS, TypeScript - Familiar: PHP, Python, Ruby, C++, CUDA C++',
    ),
    SkillCategory(
      category: 'Databases',
      details: 'PostgreSQL, MySQL, SQLite, MongoDB, Mongoose, Entity Framework',
    ),
    SkillCategory(
      category: 'Web',
      details: 'Node, Express, Next.js, .NET, REST APIs',
    ),
    SkillCategory(
      category: 'Parallel',
      details: 'OpenMP, ILGPU',
    ),
    SkillCategory(
      category: 'Environments',
      details: 'Linux, Docker, Windows',
    ),
  ],
  activitiesAndLeadership: [
    ActivityItem(
      title: 'Communications Officer',
      date: 'Sep. 2025 - Present',
      organization: 'Hacker Refactor (OSU-Cascades ACM-W)',
      location: 'Bend, Oregon',
      description: [
        'Coordinated outreach initiatives to local schools, exposing K-12 students to computer science and fostering early interest in STEM careers.',
        'Planned and executed events with external organizations and community members to build a broader network of individuals empowered by and engaged in computer science.',
        'Mentored a AP CS high school student, providing guidance on program structure, design patterns, and CS fundamentals.',
      ],
    ),
  ],
  workExperience: [
    WorkExperienceItem(
      title: 'Founder',
      date: 'Jul. 2025 - Present',
      company: 'Spatial Automata',
      location: 'Bend, Oregon',
      description: [
        'Founded an early-stage research platform to explore Tsetlin Machines for spatial learning in AEC contexts.',
        'Prototyped data pipelines integrating AutoCAD ObjectARX to extract and structure spatial data for ML experimentation.',
      ],
    ),
    WorkExperienceItem(
      title: 'Electrician\'s Assistant',
      date: 'Jun. 2023 - Present',
      company: 'Westech Electric',
      location: 'Bend, Oregon',
      description: [
        'Provided technical and administrative support with tasks such as maintaining tax documentation, payroll activities, advertising, assisting in obtaining electrical permits, and general IT support.',
        'Communicated with customers regarding project specifics including deadlines, design proposals, cost estimates, and technical requirements to achieve desired results within project constraints.',
        'Executed acquisition, delivery, and on-site handling of materials and equipment to ensure safety and timely project progress.',
        'Diagnosed and installed of a variety of electrical equipment and circuits in commercial and residential settings, such as outlets, switches, relays, lighting fixtures and circuit panels.',
        'Operated a variety of equipment such as drills, torches, hydraulic punches and jacks, testing equipment, vacuum systems, and hand tools.',
      ],
    ),
  ],
);