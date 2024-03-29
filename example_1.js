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

// Since functions are object in javascript, you can pass them
// to another function as a callback.
function compute( math_func ) {
  math_func( 3, 5 );
}

// return 8
compute( sum );

// same as previous example, you create a function on the fly
// and pass it as an argument directly.
compute( function( a,b ) {
  return a + b;
});

// return 15
compute( multiply );

// return 15 also
compute( function( a,b ) {
  return a * b;
})
