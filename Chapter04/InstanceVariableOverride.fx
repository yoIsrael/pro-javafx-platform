class A {
  var i: Integer = 1024;
}

class B extends A {
  override var i = 2048;
}

var a = A {};
var b = B {};

println("a.i = {a.i}.");
println("b.i = {b.i}.");
