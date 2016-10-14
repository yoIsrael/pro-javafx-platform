// The interface
abstract class Food {
  abstract function getName():String;
  abstract function whatsInIt():String;
}

// The implementation
class Hamburger extends Food {
  override function getName() {
    "Hamburger"
  }
  override function whatsInIt() {
    "beef patties"
  }
}

// A function that gives the calling code an instance of Food
function getTodaysSpecial():Food {
  Hamburger {}
}

// The calling code, no direct mentioning of Hamburger is made here
var food = getTodaysSpecial();
println("Today's special is {food.getName()}.  "
        "It has {food.whatsInIt()} in it.");
