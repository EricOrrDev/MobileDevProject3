class Profile {
  final String name;
  final String title;
  final String phone;
  final String github;
  final String email;
  final String imageUrl;

  const Profile({
    required this.name,
    required this.title,
    required this.phone,
    required this.github,
    required this.email,
    required this.imageUrl,
  });
}

const profile = Profile(
  name: 'Eric Orr',
  title: 'CS STUDENT',
  phone: '+1 (503) 983-3279',
  github: 'https://github.com/EricOrrDev',
  email: 'Eric.Orr.Dev@gmail.com',
  imageUrl:
      'https://media.licdn.com/dms/image/v2/D4E03AQEcfqKcxp0b8Q/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1732904312039?e=1772668800&v=beta&t=hWKdIlwXwbMvhhDmEt4xrBTbtgkvY1nKxKbpa6lD9Ms',
);
