import 'package:flutter/material.dart';

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
