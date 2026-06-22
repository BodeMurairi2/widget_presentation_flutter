import 'package:flutter/material.dart';
import 'package:widget_presentation_flutter/components/annoucementcard.dart';
import 'package:widget_presentation_flutter/data/annoucement.dart';

class AnnouncementPage extends StatelessWidget {
  const AnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5FA),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            pinned: true,
            backgroundColor: const Color(0xFF283593),
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Announcements',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF1A237E), Color(0xFF3949AB)],
                      ),
                    ),
                  ),
                  Positioned(
                    right: -30,
                    bottom: 20,
                    child: Icon(
                      Icons.campaign,
                      size: 160,
                      color: Colors.white.withAlpha(25),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverPadding(
            padding: const EdgeInsets.only(bottom: 16),
            sliver: SliverList.builder(
              itemCount: announcements.length,
              itemBuilder: (context, index) {
                final announcement = announcements[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 6,
                  ),
                  child: AnnouncementCard(announcement: announcement),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
