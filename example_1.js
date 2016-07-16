// You probably know about anonymous function in Javascript.
var sum = function( a,b ) {
  return a + b;
};

var multiply = function( a,b ) {
  return a * b;
}

// return 4
sum( 2, 4 );

// return 8
multiply( 2, 4 );

// Since function is an object in javascript, you can pass them
// to another function as a callback.
function compute( math_func ) {
  var first_digit = 3;
  var second_digit = 5;
  math_func( first_digit, second_digit );
}

// return 8
compute( sum );

// return 15
compute( multiply );

