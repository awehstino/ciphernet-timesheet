import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:ngcom/widgets/nortification_controller.dart';
import 'package:provider/provider.dart';
import 'presentation/screenlauncher/screenluancher.dart';
import 'widgets/user_provider.dart';

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
      debug: true);
  bool isAllowedToSendNortificatiion =
      await AwesomeNotifications().isNotificationAllowed();
  if (!isAllowedToSendNortificatiion) {
    AwesomeNotifications().requestPermissionToSendNotifications();
  }
  runApp(ChangeNotifierProvider(
    create: (context) => UserProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

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
      home: Luancher1(),
      //  ResponsiveLayout(
      //   mobileBody: MobileLayout(),
      //   desktopBody: DesktopLayout(),
      // ),

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Luancher1(),
      //   '/login': (context) => const LoginForm(),
      //   '/signup': (context) => const SignupForm(),
      //   '/home': (context) => const HomePage(),
      //   '/installations': (context) => const Installation(),
      //   '/tickets': (context) => const Tickets(),
      //   '/surveys': (context) => const Survey(),
      // },
    );
  }
}
