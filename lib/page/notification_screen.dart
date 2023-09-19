import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  static const route = "/notification-screen";

  @override
  Widget build(BuildContext context) {
    final message =
        ModalRoute.of(context)!.settings.arguments as RemoteMessage?;
    log('Noti screen : $message');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Push Notifications'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(message?.notification?.title ?? ''),
            Text(message?.notification?.body ?? ''),
            Text(message?.data.toString() ?? ''),
          ],
        ),
      ),
    );
  }
}
