import java.lang.*;

class PiggyBank {
  var name: String;
  var pennies: Integer;
  var nickels: Integer;

  function putInPennies(count: Integer):Void {
    if (count <= 0) {
      throw new IllegalArgumentException("count must be positive.");
    } else {
      pennies += count;
      println("You put {count} pennies into {name}.");
    }
  }

  function putInNickels(count: Integer):Void {
    if (count <= 0) {
      throw new IllegalArgumentException("count must be positive.");
    } else {
      nickels += count;
      println("You put {count} nickels into {name}.");
    }
  }

  function total():Integer {
    pennies + nickels * 5
  }
}

var myPiggyBank = PiggyBank { name: "My Piggy Bank" };
myPiggyBank.putInPennies(7);
myPiggyBank.putInNickels(3);
myPiggyBank.putInNickels(1);
println("{myPiggyBank.name} has {myPiggyBank.total()} cents:  "
  "{myPiggyBank.pennies} pennies and {myPiggyBank.nickels} nickels.");

var yourPiggyBank = PiggyBank { name: "Your Piggy Bank" };
yourPiggyBank.putInPennies(4);
yourPiggyBank.putInNickels(6);
yourPiggyBank.putInPennies(9);
println("{yourPiggyBank.name} has {yourPiggyBank.total()} cents:  "
  "{yourPiggyBank.pennies} pennies and {yourPiggyBank.nickels} nickels.");
