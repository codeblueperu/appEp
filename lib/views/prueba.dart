import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Activity List'),
        ),
        body: ActivityList(),
      ),
    );
  }
}

class ActivityList extends StatelessWidget {
  final List<Activity> activities = [
    Activity(
      title: "Daily Meditation",
      subtitle: "30 minutes a day",
      progress: 0.75,
      color: Colors.orange,
      icon: Icons.self_improvement, // Icono de ejemplo
    ),
    Activity(
      title: "Walking Steps",
      subtitle: "2000 steps a day",
      progress: 0.90,
      color: Colors.blue,
      icon: Icons.directions_walk, // Icono de ejemplo
    ),
    Activity(
      title: "Physical Exercise",
      subtitle: "45 minutes a day",
      progress: 0.65,
      color: Colors.pink,
      icon: Icons.fitness_center, // Icono de ejemplo
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: activities.length,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        final activity = activities[index];
        return ActivityCard(activity: activity);
      },
    );
  }
}

class Activity {
  final String title;
  final String subtitle;
  final double progress;
  final Color color;
  final IconData icon;

  Activity({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.color,
    required this.icon,
  });
}

class ActivityCard extends StatelessWidget {
  final Activity activity;

  const ActivityCard({required this.activity});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            // Icono de actividad
            CircleAvatar(
              radius: 30,
              backgroundColor: activity.color.withOpacity(0.2),
              child: Icon(
                activity.icon,
                color: activity.color,
                size: 30,
              ),
            ),
            SizedBox(width: 16),
            // Texto de actividad
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    activity.title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    activity.subtitle,
                    style: TextStyle(
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
            ),
            // Indicador circular de progreso
            CircularProgressIndicator(
              value: activity.progress,
              strokeWidth: 6,
              valueColor: AlwaysStoppedAnimation<Color>(activity.color),
              backgroundColor: activity.color.withOpacity(0.2),
            ),
            SizedBox(width: 8),
            // Porcentaje de progreso
            Text(
              "${(activity.progress * 100).toInt()}%",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: activity.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
