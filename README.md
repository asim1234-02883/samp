# notesapp

A new project using Flutter

## This Project Has
- pages concepts, directory concept
- login pages
- buttons in sized box
- columns in safe are with custom color components
- bottom navigation switching between pages

## Things to remember
- pubsec.yaml file has the libraries and package input
- use Scaffold always while making a new screen
- gap library added
- enables assets/images

## Helper codes

```dart
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

```