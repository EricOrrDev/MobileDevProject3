import 'package:flutter/material.dart';
import 'package:project3/tabs/business_card/profile_data.dart';
import 'package:url_launcher/url_launcher.dart';

class BusinessCardTab extends StatelessWidget {
  const BusinessCardTab({super.key});

  Future<void> _launchURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url)) {
      throw 'Could not launch $urlString';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800], // Non-white background
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 60.0,
                backgroundImage: NetworkImage(profile.imageUrl),
                backgroundColor: Colors.white,
              ),
              const SizedBox(height: 20.0),
              Text(
                profile.name,
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                profile.title,
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 18.0,
                  color: Colors.blueGrey[100],
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(color: Colors.blueGrey.shade100),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                //this was needlessly hard to find, why the hell is it called an inkwell??
                child: InkWell(
                  onTap: () => _launchURL('tel:${profile.phone}'),
                  child: ListTile(
                    leading: Icon(Icons.phone, color: Colors.blueGrey[900]),
                    title: Text(
                      profile.phone,
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: InkWell(
                  onTap: () => _launchURL(profile.github),
                  child: ListTile(
                    leading: Icon(Icons.web, color: Colors.blueGrey[900]),
                    title: Text(
                      profile.github.replaceFirst('https://', ''),
                      style: TextStyle(
                        color: Colors.blueGrey[900],
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(Icons.email, color: Colors.blueGrey[900]),
                  title: Text(
                    profile.email,
                    style: TextStyle(
                      color: Colors.blueGrey[900],
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
