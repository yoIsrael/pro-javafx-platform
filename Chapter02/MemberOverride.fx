class Point {
  var x: Number;
  var y: Number;
}

var p = Point {
  override var x on replace {
    println("x is now {x}");
  }
  override function toString(): String {
    "Point({x}, {y})"
  }
  x: 3.0
  y: 4.0
};

println(p);
