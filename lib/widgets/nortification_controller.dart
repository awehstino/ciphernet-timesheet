import 'package:awesome_notifications/awesome_notifications.dart';

class NortificationController{
@pragma("vm:entry-point")
  static Future <void> onNotificationCreatedMethod(ReceivedNotification receivedNotification) async {
    // Your code goes here
  }


  /// Use this method to detect every time that a new notification is displayed
  @pragma("vm:entry-point")
  static Future <void> onNotificationDisplayedMethod(ReceivedNotification receivedNotification) async {
    // Your code goes here
  }


  @pragma("vm:entry-point")
  static Future <void> onDismissActionReceivedMethod(ReceivedAction receivedAction) async {
    // Your code goes here
  }

  @pragma("vm:entry-point")
  static Future <void> onActionReceivedMethod(ReceivedAction receivedAction) async {
    // Your code goes here

    // Navigate into pages, avoiding to open the notification details page over another details page already opened
   
  }

}