 
  abstract class PaymentStrategy {
   pay(double amount) ;
}
class CreditCardPayment implements PaymentStrategy {
  @override
  pay(double amount) {
    print('Paying \$${amount} using Credit Card');
  }
}
class PayPalPayment implements PaymentStrategy {
  @override
  pay(double amount) {
    print('Paying \$${amount} using PayPal');
  }
}
class ShoppingCart {
  PaymentStrategy? _paymentStrategy;

  void setPaymentStrategy(PaymentStrategy strategy) {
    _paymentStrategy = strategy;
    
  }

  void checkout(double amount) {
    if (_paymentStrategy == null) {
      print('Please select a payment method.');
    } else {
      _paymentStrategy!.pay(amount);
    }
  }
}