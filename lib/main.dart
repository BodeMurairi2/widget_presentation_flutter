import 'package:flutter/material.dart';
import 'screens/announcement.dart';
import 'screens/home.dart';
import 'screens/feedannouncement.dart';

void main() {
  runApp(const Democlass());
}

class Democlass extends StatelessWidget {
  const Democlass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A237E),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const FeedAnnouncementPage(),
        '/feed': (context) => const FeedAnnouncementPage(),
        '/announcements': (context) => const AnnouncementPage(),
      },
    );
  }
}
