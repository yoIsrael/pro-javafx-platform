function f(i:Integer, n:Number):Void {
  println("Integer, Number version of f is called with ({i}, {n}).");
}

function f(n:Number, i:Integer):Void {
  println("Number, Integer version of f is called with ({n}, {i}).");
}

f(1024, 3.14);
f(6.28, 2048);
// f(1024, 2048);
