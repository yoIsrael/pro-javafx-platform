{
  var primes = function(n:Integer):Integer[] {
    [2..n][k | sizeof [2..<k][d | k mod d == 0] == 0]
  };
  println(primes(64));
}
