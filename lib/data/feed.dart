class FeedAnnouncement {
  final String title;
  final String description;
  final String date;

  const FeedAnnouncement({
    required this.title,
    required this.description,
    required this.date,
  });
}

const List<FeedAnnouncement> feedAnnouncements = [
  FeedAnnouncement(
    title: 'Campus Wi-Fi Upgrade',
    description:
        'The campus network will be upgraded this weekend. Expect brief outages on Saturday between 2–5 PM.',
    date: 'June 21, 2026',
  ),
  FeedAnnouncement(
    title: 'Final Exam Schedule Released',
    description:
        'The final examination timetable for Semester 2 is now available on the student portal.',
    date: 'June 20, 2026',
  ),
  FeedAnnouncement(
    title: 'Guest Lecture: AI in Healthcare',
    description:
        'Join Dr. Amina Yusuf for a talk on AI-driven diagnostics. Auditorium B, 3 PM.',
    date: 'June 19, 2026',
  ),
  FeedAnnouncement(
    title: 'Library Extended Hours',
    description:
        'The main library will remain open until midnight during the exam period.',
    date: 'June 18, 2026',
  ),
  FeedAnnouncement(
    title: 'Hackathon Registration Open',
    description:
        'Sign up for the 48-hour Flutter Hackathon. Teams of 3–5. Prizes for top 3 teams!',
    date: 'June 17, 2026',
  ),
  FeedAnnouncement(
    title: 'Student Council Elections',
    description:
        'Nominations for the 2026–2027 student council are now open. Deadline: June 25.',
    date: 'June 16, 2026',
  ),
];
