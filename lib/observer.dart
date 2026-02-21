abstract class Observer{
  void update(bool atHome);
}
class KettleObserver implements Observer {
  @override
  void update(bool atHome){
    if(atHome){
      print('Kettle is boiling!');
    } else {
      print('Kettle is not boiling!');
    }
  }
}
class LightObserver implements Observer {
  @override
  void update(bool atHome){
    if(atHome){
      print('light is on!');
    } else {
      print('light is off!');
    }
  }
}
class HomeManager {
  List<Observer> _observers = [];// List to hold observers
  bool _atHome = false;

  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  void setAtHome(bool atHome) {
    _atHome = atHome;
    notifyObservers();// Notify observers about the change in state
  }
// Notify all observers about the change in state
  void notifyObservers() {
    for (var observer in _observers) {
      observer.update(_atHome);
    }
  }
}







