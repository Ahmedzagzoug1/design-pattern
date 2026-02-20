
void main(List<String> arguments) {
final emailNotification=NotificationFactory.createNotification( "email");
emailNotification.send("Hello via Email!");
final smsNotification=NotificationFactory.createNotification( "sms");
smsNotification.send("Hello via SMS!"); 
}
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
