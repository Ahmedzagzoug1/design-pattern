import 'package:tuturial/factory.dart';
import 'package:tuturial/observer.dart';
import 'package:tuturial/singleton.dart';
import 'package:tuturial/stratgy.dart';
void main(List<String> arguments) {
testObserver();
}

testSingleton(){
  final app1=App();
  final app2=App();
  print(identical(app1, app2)); // true
}
testFactory(){
  final emailNotification=NotificationFactory.createNotification( "email");
  emailNotification.send("Hello via Email!");
  final smsNotification=NotificationFactory.createNotification( "sms");
  smsNotification.send("Hello via SMS!"); 
}
 testStrategy(){
  final cart=ShoppingCart();
  cart.setPaymentStrategy(CreditCardPayment());
  cart.checkout(100.0);
  cart.setPaymentStrategy(PayPalPayment());
  cart.checkout(200.0);
 }
 testObserver(){
  final home=HomeManager();
  final kettle=KettleObserver();
  final light=LightObserver();
  home.addObserver(kettle);
  home.addObserver(light);
  home.setAtHome(true);
  home.setAtHome(false);
  home.removeObserver(kettle);
  home.setAtHome(true);
 }