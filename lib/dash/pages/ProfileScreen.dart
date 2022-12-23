import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //todo #1 use safe area
      //todo #2 use padding horizontal = 10 around safe area
      body: SingleChildScrollView(
        child: Column(children: [
          const Gap(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Profile",
                style: TextStyle(fontSize: 19),
              ),
              IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
            ],
          ),
          const Gap(10),
          //todo #4 use card object here
        ]),
      ),
    );
  }
}

//todo #3 Make a ProfileCard stateless class
