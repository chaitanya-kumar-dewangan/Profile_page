import 'package:flutter/material.dart';

const url =
    'https://img.freepik.com/free-photo/morskie-oko-tatry_1204-510.jpg?semt=ais_hybrid';

void main() {
  runApp(const MaterialApp(
    home: Profile(),
    debugShowCheckedModeBanner: false,
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      body: Stack(
        children: [
          backgroundSection(),
          floatingcard(),
        ],
      ),
    );
  }

  Stack floatingcard() {
    return Stack(
      children: [
        Positioned(
          left: 20,
          right: 20,
          bottom: 20,
          top: 100,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0)),
            color: Colors.white,
            child: Column(
              children: [
                const Expanded(child: SizedBox()),
                Text(
                  'Chaitanya Kumar',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
                mediaButtonSection(),
                socialMedia(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 12.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0))),
                  onPressed: () {},
                  child: const Text('FOLLOW NOW'),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
        roundProfile(),
      ],
    );
  }

  Positioned roundProfile() {
    return Positioned(
      left: 0,
      right: 0,
      top: 50,
      child: Center(
        child: Container(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              'assets/images/profile.jpg',
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }

  Padding socialMedia() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Column(
            children: [
              Text(
                '240',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'FOLLOWING',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )
            ],
          ),
          Column(
            children: [
              Text(
                '24k',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              Text(
                'FOLLOWERS',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              )
            ],
          )
        ]));
  }

  Padding mediaButtonSection() {
    return Padding(
        padding: EdgeInsets.all(12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialMediaButon(
              filled: true,
              icon: Icons.call,
            ),
            SocialMediaButon(
              filled: true,
              icon: Icons.near_me,
            ),
            SocialMediaButon(
              filled: true,
              icon: Icons.mail,
            ),
            SocialMediaButon(
              filled: true,
              icon: Icons.share,
            ),
            SocialMediaButon(
              filled: true,
              icon: Icons.sms,
            ),
            SocialMediaButon(
              filled: true,
              icon: Icons.contact_mail,
            ),
          ],
        ));
  }

  Column backgroundSection() {
    return Column(
      children: [
        Image.asset('assets/images/background.jpg',
            width: double.infinity, height: 200, fit: BoxFit.cover)
      ],
    );
  }
}

//done
class SocialMediaButon extends StatelessWidget {
  final bool filled;
  final IconData? icon;

  const SocialMediaButon({
    super.key,
    this.filled = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.all(4.0),
      width: 40,
      decoration: BoxDecoration(
          color: filled ? Colors.blue : null,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.lightBlueAccent)),
      child: Icon(
        icon,
        color: filled ? Colors.white : Colors.black,
      ),
    );
  }
}
