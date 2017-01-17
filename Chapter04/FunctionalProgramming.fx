{
  var addN: function(:Integer):function(:Integer):Integer;
  addN = function(n) {
    function(i:Integer) {
      i + n
    }
  };

  var addTen = addN(10);
  println("addTen(4) = {addTen(4)}.");
}
