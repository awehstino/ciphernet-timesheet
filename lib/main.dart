import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:ngcom/presentation/screenlauncher/screenluancher.dart';
import 'package:ngcom/widgets/nortification_controller.dart';



void main() async {
 await AwesomeNotifications().initialize(
  // set the icon to null if you want to use the default app icon
 null,
  [
    NotificationChannel(
        channelGroupKey: 'basic_channel_group',
        channelKey: 'basic_channel',
        channelName: 'Basic notifications',
        channelDescription: 'Notification channel for basic tests',
        defaultColor: const Color(0xFF9D50DD),
        ledColor: Colors.white)
  ],
  // Channel groups are only visual and are not required
  channelGroups: [
    NotificationChannelGroup(
        channelGroupKey: 'basic_channel_group',
        channelGroupName: 'Basic group')
  ],
  debug: true
);
bool isAllowedToSendNortificatiion = await AwesomeNotifications().isNotificationAllowed();
  if(!isAllowedToSendNortificatiion){
    AwesomeNotifications().requestPermissionToSendNotifications();
  }
  runApp(const MyApp());
}

class MyApp extends  StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  
  void initState() {
    AwesomeNotifications().setListeners(
      onActionReceivedMethod: NortificationController.onActionReceivedMethod,
      onNotificationCreatedMethod: 
      NortificationController.onNotificationCreatedMethod,
      onDismissActionReceivedMethod: 
      NortificationController.onDismissActionReceivedMethod,
      onNotificationDisplayedMethod: 
      NortificationController.onNotificationDisplayedMethod,
      );
      
    super.initState();
    
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'NGcom',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      // ignore: prefer_const_constructors
      home: Luancher1(),
    );
  }
}

