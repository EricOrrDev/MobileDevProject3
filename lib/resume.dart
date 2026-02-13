import 'package:flutter/material.dart';
import 'package:project3/resume_data.dart';

class ResumeTab extends StatelessWidget {
  const ResumeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(
        16.0,
      ), // Padding around the entire resume content
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            myResume.contactInfo.name,
            style: const TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          ),
          Text(
            myResume.contactInfo.location,
            style: const TextStyle(fontSize: 16.0),
          ),
          Text(
            '${myResume.contactInfo.phone} | ${myResume.contactInfo.email}',
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 20.0), // Spacer

          _buildSectionTitle('EDUCATION'),
          ...myResume.education.map((edu) => _buildEducationItem(edu)),
          const SizedBox(height: 20.0),

          _buildSectionTitle('PROJECTS'),
          ...myResume.projects.map((proj) => _buildProjectItem(proj)),
          const SizedBox(height: 20.0),

          _buildSectionTitle('SKILLS'),
          ...myResume.skills.map((skill) => _buildSkillItem(skill)),
          const SizedBox(height: 20.0),

          _buildSectionTitle('ACTIVITIES AND LEADERSHIP'),
          ...myResume.activitiesAndLeadership.map(
            (activity) => _buildActivityItem(activity),
          ),
          const SizedBox(height: 20.0),

          _buildSectionTitle('WORK EXPERIENCE'),
          ...myResume.workExperience.map(
            (work) => _buildWorkExperienceItem(work),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline, // Underline for emphasis
        ),
      ),
    );
  }

  Widget _buildEducationItem(EducationItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${item.degree} ${item.date}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            '${item.university}, ${item.location}',
            style: const TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }

  Widget _buildProjectItem(ProjectItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${item.title} ${item.date}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          ...item.description.map(
            (desc) => Text('• $desc', style: const TextStyle(fontSize: 14.0)),
          ),
        ],
      ),
    );
  }

  Widget _buildSkillItem(SkillCategory item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4.0),
      child: Text(
        '${item.category}: ${item.details}',
        style: const TextStyle(fontSize: 14.0),
      ),
    );
  }

  Widget _buildActivityItem(ActivityItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${item.title} ${item.date}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            '${item.organization}, ${item.location}',
            style: const TextStyle(fontSize: 16.0),
          ),
          ...item.description.map(
            (desc) => Text('• $desc', style: const TextStyle(fontSize: 14.0)),
          ),
        ],
      ),
    );
  }

  Widget _buildWorkExperienceItem(WorkExperienceItem item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '${item.title} ${item.date}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
          Text(
            '${item.company}, ${item.location}',
            style: const TextStyle(fontSize: 16.0),
          ),
          ...item.description.map(
            (desc) => Text('• $desc', style: const TextStyle(fontSize: 14.0)),
          ),
        ],
      ),
    );
  }
}
