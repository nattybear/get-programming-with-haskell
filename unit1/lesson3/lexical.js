var libraryAdd = function(a, b) {
  c = a + b;
  return c;
}

var x = (function() {
  var a = 2;
  var b = 3;
  var c = a + b;
  var d = libraryAdd(10, 20);
  console.log(c);
})()
