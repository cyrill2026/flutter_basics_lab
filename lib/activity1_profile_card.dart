// Activity 1: StatelessWidgets and the widget tree
import 'package:flutter/material.dart';
import 'student.dart';

void main() => runApp(const ProfileApp());

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Activity 1',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: studentColor),
      home: Scaffold(
        appBar: AppBar(title: Text('Activity 1 - $studentName')),
        body: const Center(child: ProfileCard()),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Card(
      margin: const EdgeInsets.all(24),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundColor: colors.primary,
              child: Icon(Icons.person, size: 56, color: colors.onPrimary),
            ),
            const SizedBox(height: 16),
            const Text(
              studentName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              'BS Information Technology',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            // Student contact information.
            const Row(
              children: [
                Icon(Icons.email_outlined, size: 20),
                SizedBox(width: 8),
                Expanded(child: Text('rjcyrilljirc.monzon@csucc.edu.ph', softWrap: true)),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              children: [
                Icon(Icons.phone_outlined, size: 20),
                SizedBox(width: 8),
                Expanded(child: Text('09193831762')),
              ],
            ),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.badge_outlined, size: 20),
                SizedBox(width: 8),
                Flexible(child: Text('Student ID: 241-01146')),
              ],
            ),
            const SizedBox(height: 8),
            const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.school_outlined, size: 20),
                SizedBox(width: 8),
                Text('Section: ILFV3'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
