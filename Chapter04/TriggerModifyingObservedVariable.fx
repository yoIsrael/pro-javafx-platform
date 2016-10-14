// Using a trigger to keep the value of i to be between 0 and 9999.
var i = 1024 on replace {
  println("Variable i changed to {i}.");
  if (i < 0) {
    println("Since {i} < 0, setting i to 0.");
    i = 0;
  } else if (i > 9999) {
    println("Since {i} > 9999, setting i to 9999.");
    i = 9999;
  }
};

i = -100;
i = 20000;
