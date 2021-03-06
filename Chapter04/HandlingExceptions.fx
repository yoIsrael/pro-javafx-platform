import java.lang.*;

function wheelOfException(i:Integer):Void {
  if (i == 0) throw new Exception("Zero");
  if (i == 1) throw new IllegalArgumentException("One");
  if (i == 2) throw new IllegalStateException("Two");
  if (i == 3) throw new RuntimeException("Three");
  if (i == 4) throw new UnsupportedOperationException("Four");
  println("Out of exceptions for i = {i}");
}

function catchExceptions(i:Integer):Void {
  try {
    wheelOfException(i);
  } catch (iae:IllegalArgumentException) {
    println("Caught IllegalArgumentException with message: "
             "{iae.getMessage()}.");
  } catch (ise:IllegalStateException) {
    println("Caught IllegalStateException with message: "
             "{ise.getMessage()}.");
  } catch (uoe:UnsupportedOperationException) {
    println("Caught UnsupportedOperationException with message: "
             "{uoe.getMessage()}.");
  } catch (re:RuntimeException) {
    println("Caught RuntimeException with message: "
             "{re.getMessage()}.");
  } catch (e:Exception) {
    println("Caught Exception with message: "
             "{e.getMessage()}.");
  } finally {
    println("Reached finally block.");
  }
}

function callWheelOfException() {
  for (i in [0..5]) {
    catchExceptions(i);
  }
}

callWheelOfException ();
