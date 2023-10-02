void main() {
  //Inicializaciones
  final String name = "Jossue";
  final String power = "Programar";
  final int hp = 100;
  final List<String> abilities = ["JS", "c++", "Python", "C#"];
  final Map<int, String> whereAmI = {
    1: "Lilipuf", 2: "Ecuador", 3: "US"
  };
  final mapa ={
    "Hola":"Hola",
    "Mundo": "Mundo",
    "Ecuador":{
      1: "Quito", 2: "Guayaquil", 3: "Manta"
    }
  };

  //dynamics
  dynamic name2 = "Jossue";
  name2 = 1;
  name2 = 1.0;
  name2 = true;
  name2 = [ 1,2,3,4,5,6,7,8,9 ];
  name2 = { 1,2,3,4,5,6,7,8,9 };
  name2 = null;
  name2 = () => true;

  final Hero newHero = new Hero(name: name, power: power);

  //Funciones 
  String HolaMundo({ required String name, String message = "Hello" }){
    return '$message, $name';
  }
  
  //Logica del programa
  
  //Impresiones
  print(newHero.toString());
  print("Hi, ${ newHero.name }, your power is ${ newHero.power }");
  print("""
  $name is an $power, that have a $hp on live, in the habilities he got $abilities
  """);
  print(name2);
  print(whereAmI[1]);
  print(HolaMundo(name: "Jossue", message: "Bienvenido"));
  print("Name: ${ mapa['Ecuador'] }");
}

//Clases
class Hero{
  String? name;
  String? power;


  //Constructor
  Hero({ required this.name, required this.power});

  /*
  Otra forma de hacer el constructor
  Hero (String name, String power){
    this.name = name;
    this.power = power;
  }

  Hero(String name, String power):name = name, power = power;  
  */

  //Metodos
  @override
  String toString() {
    return "$name - $power";
  }
}