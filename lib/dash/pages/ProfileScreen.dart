import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Profile",
                    style: TextStyle(fontSize: 19),
                  ),
                  //todo #3 show dialog onpressed  logout
                  IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
                ],
              ),
              const Gap(10),
              const ProfileCard(name: "Kushagra Acharya")
            ]),
          ),
        ),
      ),
    );
  }
}

//todo #1 move this to directory: components/ui
//todo #2 add user phone number, address, blood group
class ProfileCard extends StatelessWidget {
  final String name;

  const ProfileCard({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 150,
        width: double.infinity,
        child: Center(
          child: Text(name),
        ),
      ),
    );
  }
}
