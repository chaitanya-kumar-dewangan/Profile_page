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
      alignment: Alignment.topCenter,
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
              mainAxisAlignment: MainAxisAlignment.start,
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
                const FollowersSection(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                        vertical: 12.0,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24.0))),
                  onPressed: () {},
                  child: const Text('FOLLOW NOW', style: TextStyle(color: Colors.white),),
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

class FollowersSection extends StatelessWidget {
  const FollowersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      // width: 120,
      color: Colors.blue.shade50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
            width: 250,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 25,
                    child: Icon(Icons.person),
                  ),
                ),
                Positioned(left: 40,
                    child: CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.group),
                    )),

                Positioned(left: 80,
                    child: CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 25,
                      child: Icon(Icons.group_add),
                    )),
                Positioned(left: 120,
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 25,
                      child: Icon(Icons.group_remove),
                    )),
                Positioned(left: 160,
                    child: CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 25,
                      child: Icon(Icons.people_alt_rounded),
                    )),
                Positioned(left: 200,
                    child: CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      radius: 25,
                      child: Icon(Icons.accessible_forward_sharp),
                    )),


              ],
            ),
          ),
          Text('22 Follower you know',  style: TextStyle(color: Colors.grey),)
        ],
      ),
    );
  }
}
