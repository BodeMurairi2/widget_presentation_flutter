import 'package:flutter/material.dart';
import 'package:widget_presentation_flutter/components/feedannouncement.dart';
import 'package:widget_presentation_flutter/data/feed.dart';

class FeedAnnouncementPage extends StatelessWidget {
  const FeedAnnouncementPage({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surfaceContainerLowest,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: true,
            expandedHeight: 100,
            backgroundColor: const Color(0xFF1A237E),
            foregroundColor: Colors.white,
            leading: const Icon(Icons.menu),
            actions: [
              IconButton(icon: const Icon(Icons.search), onPressed: () {}),
              IconButton(
                icon: const Icon(Icons.notifications_none),
                onPressed: () {},
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: const Text(
                'Feed',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              background: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [Color(0xFF1A237E), Color(0xFF3949AB)],
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.pushNamed(context, '/announcements');
                },
                icon: const Icon(Icons.campaign),
                label: const Text('View All Announcements'),
                style: FilledButton.styleFrom(
                  minimumSize: const Size(double.infinity, 48),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 4, bottom: 16),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final item = feedAnnouncements[index];
                return FeedCard(feedAnnouncement: item);
              }, childCount: feedAnnouncements.length),
            ),
          ),
        ],
      ),
    );
  }
}
