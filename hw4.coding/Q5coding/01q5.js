var original = { a:"A", b:"B" };
var copy = {} ;
Object.setPrototypeOf(copy, original);

original.b = 99;
console.log("copy.b = ", copy.b);
console.log("original b = " , original.b);

