// while loop
var i = 1;
while (i <= 10) {
  println("{i} squared: {i * i}");
  i += 1;
}

// break from while loop
var j = 1;
while (j <= 10) {
  if (j mod 2 != 0) {
    j += 1;
    continue;
  } else {
    println(j);
    j += 1;
  }
}

// continue in for loop
for (x in [1..10]) {
  if (x > 7) {
    break;
  } else {
    println(x);
  }
}

// if expressions
var k = if (i == j) then 1 else 0;

if (k < 0) {
  println("{k} < 0");
} else {
  println("{k} >= 0");
}

for (x in [-1..1]) {
  if (x < 0) {
    println("{x} < 0");
  } else if (x == 0) {
    println("{x} = 0");
  } else {
    println("{x} > 0");
  }
}

// if expression with dissimilar then and else clauses
var a = if (true) then 3 else "4";
println("a = {a}");
// assign an Integer to a
a = 5;
println("a = {a}");
// assign a Stirng to a
a = "hi";
println("a = {a}");

var b = if (true) then 7 else [8];
print("b = "); println(b);
