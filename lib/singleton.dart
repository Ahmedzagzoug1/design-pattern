class App{
  App._internal();
  static final App _instance=App._internal();
  factory App(){
    return _instance;
  }

  
}