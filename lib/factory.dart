abstract class Notification{
    void send( String message);
 }
 class EmailNotification implements Notification{
    @override
    void send(String message) {
      print("Sending email notification: $message");
    }
 }
 class SMSNotification implements Notification{
    @override
    void send(String message) {
      print("Sending SMS notification: $message");
    }
 }
    class NotificationFactory{
    static Notification createNotification(String type){
      if(type == "email"){
        return EmailNotification();
      } else if(type == "sms"){
        return SMSNotification();
      } else {
        throw Exception("Invalid notification type");
      }
        }    }
