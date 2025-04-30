import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:zad/widgets/CustomAppBar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        leading: null,
        title: Icon(Icons.arrow_back_ios_new),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff68AD80)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset("lib/images/tom.png"),
              ),
              title: const Text("Easy"),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(FontAwesomeIcons.penToSquare)),
            ),
            const SizedBox(
              width: 6,
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Icon(Icons.person),
                      title: const Text("Profile"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Handle profile tap
                      },
                    ),
                    ListTile(
                      leading: const FaIcon(
                        FontAwesomeIcons.heart,
                      ),
                      title: const Text("favorites"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Handle profile tap
                      },
                    ),
                    ListTile(
                      leading: const FaIcon(FontAwesomeIcons.wallet),
                      title: const Text("Wallet"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Handle profile tap
                      },
                    ),
                  ],
                )),
            const SizedBox(
              height: 20,
            ),
            Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text("Payment Method and Details"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Handle profile tap
                      },
                    ),
                    ListTile(
                      title: const Text("Order History"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Handle profile tap
                      },
                    ),
                    ListTile(
                      title: const Text("location"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Handle profile tap
                      },
                    ),
                    ListTile(
                      title: const Text("Address book"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Handle profile tap
                      },
                    ),
                    ListTile(
                      title: const Text("Social acounts"),
                      trailing: const Icon(Icons.arrow_forward_ios),
                      onTap: () {
                        // Handle profile tap
                      },
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
